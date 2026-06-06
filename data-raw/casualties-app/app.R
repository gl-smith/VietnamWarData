# U.S. Vietnam War Casualties Explorer (shinylive / WebAssembly)
# Runs entirely in the browser. Data: DCAS Vietnam Conflict Extract (VietnamWarData),
# pre-aggregated to state x year x service branch counts; US state polygons from maps.

library(shiny)
library(dplyr)
library(ggplot2)
library(scales)

dcas        <- read.csv("dcas_agg.csv", stringsAsFactors = FALSE)
states_poly <- readRDS("us_states_poly.rds")

branches <- sort(unique(dcas$branch))
states   <- sort(unique(dcas$state))
yr_min   <- min(dcas$year)
yr_max   <- max(dcas$year)

ui <- fluidPage(
  tags$h2("U.S. Vietnam War Casualties Explorer"),
  tags$p(
    "Records of U.S. military fatal casualties from the DCAS Vietnam Conflict ",
    "Extract (", tags$code("get_dcas()"), "). Filter by service branch, home ",
    "state, and year; every view re-counts to match your selection."
  ),
  sidebarLayout(
    sidebarPanel(
      width = 3,
      checkboxGroupInput("branch", "Service branch", choices = branches, selected = branches),
      selectizeInput("state", "State of origin", choices = states, selected = NULL,
                     multiple = TRUE, options = list(placeholder = "All states")),
      sliderInput("years", "Year of death", min = yr_min, max = yr_max,
                  value = c(1965, 1972), step = 1, sep = ""),
      tags$hr(),
      strong(textOutput("total"))
    ),
    mainPanel(
      width = 9,
      tabsetPanel(
        tabPanel("Map of home states", plotOutput("map", height = "520px")),
        tabPanel("Casualties over time", plotOutput("ts", height = "440px")),
        tabPanel("Ranked states", plotOutput("bar", height = "560px"))
      )
    )
  )
)

server <- function(input, output, session) {

  filtered <- reactive({
    d <- dcas[dcas$year >= input$years[1] & dcas$year <= input$years[2], , drop = FALSE]
    if (length(input$branch)) d <- d[d$branch %in% input$branch, , drop = FALSE] else d <- d[0, , drop = FALSE]
    if (length(input$state))  d <- d[d$state %in% input$state, , drop = FALSE]
    d
  })

  output$total <- renderText({
    paste0("Casualties shown: ", format(sum(filtered()$n), big.mark = ","))
  })

  output$map <- renderPlot({
    by_state <- filtered() |> group_by(state_lc) |> summarise(n = sum(n), .groups = "drop")
    mp <- left_join(states_poly, by_state, by = c("region" = "state_lc"))
    ggplot(mp, aes(long, lat, group = group, fill = n)) +
      geom_polygon(color = "grey85", linewidth = 0.1) +
      coord_quickmap() +
      scale_fill_viridis_c(option = "inferno", direction = -1, na.value = "grey95",
                           labels = comma, name = "Casualties") +
      labs(title = "Casualties by home state of record",
           caption = "Alaska, Hawaii, and territories are not shown on this base map.") +
      theme_void(base_size = 14) +
      theme(legend.position = "right", plot.title = element_text(face = "bold"))
  })

  output$ts <- renderPlot({
    filtered() |> group_by(year) |> summarise(n = sum(n), .groups = "drop") |>
      ggplot(aes(year, n)) +
      geom_col(fill = "#7c1f12") +
      scale_y_continuous(labels = comma) +
      labs(x = "Year of death", y = "Casualties", title = "Casualties over time") +
      theme_minimal(base_size = 14) +
      theme(plot.title = element_text(face = "bold"))
  })

  output$bar <- renderPlot({
    filtered() |> group_by(state) |> summarise(n = sum(n), .groups = "drop") |>
      slice_max(n, n = 20) |>
      ggplot(aes(reorder(state, n), n)) +
      geom_col(fill = "#7c1f12") +
      coord_flip() +
      scale_y_continuous(labels = comma) +
      labs(x = NULL, y = "Casualties", title = "Top 20 states by casualties") +
      theme_minimal(base_size = 14) +
      theme(plot.title = element_text(face = "bold"))
  })
}

shinyApp(ui, server)
