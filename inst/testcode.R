library(shiny)
library(daisyuiwidget1)

ui <- fluidPage(
  "hr underneath me",
  hr(),
  "timeline underneath me",
  daisyTimelineOutput("timeline"),
)

server <- function(input, output) {
  output$timeline <- renderDaisyTimeline({
    daisyTimeline(list(
      list(date = "2022", content = "Planning phase"),
      list(date = "2023", content = "Development started"),
      list(date = "2024", content = "Launch 🚀"),
      list(date = "2025", content = "IPO 🚀")
    ))
  })
}

shinyApp(ui, server)
