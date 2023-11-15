#Images

ui <- fluidPage(
  titlePanel("How and Why is Taylor Swift Influential?"),
  mainPanel(
    fluidRow(
      column(4,
             imageOutput("image1", click = "image1_click"),
             textOutput("info1")
      ),
      column(4,
             imageOutput("image2", click = "image2_click"),
             textOutput("info2")
      ),
      column(4,
             imageOutput("image3", click = "image3_click"),
             textOutput("info3")
      )
    )
  )
)

server <- function(input, output, session) {
  output$image1 <- renderImage({
    list(src = "image1.jpg", width = "400px", height = "400px", alt = "Image 1")
  })
  output$image2 <- renderImage({
    list(src = "image2.jpg", width = "400px", height = "400px", alt = "Image 2")
  })
  output$image3 <- renderImage({
    list(src = "image3.jpg", width = "400px", height = "400px", alt = "Image 3")
  })
  
  observeEvent(input$image1_click, {
    output$info1 <- renderText({
      "Likecount:1,984,198\nReplycount:\nRetweetcount: "
    })
  })
  observeEvent(input$image2_click, {
    output$info2 <- renderText({
      "Likecount:1,124,468\nReplycount:\nRetweetcount: "
    })
  })
  observeEvent(input$image3_click, {
    output$info3 <- renderText({
      "Likecount:848,969\nReplycount:\nRetweetcount: "
    })
  })
} 



shinyApp(ui, server)
