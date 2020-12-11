library(shiny)


ui <- navbarPage(
  strong("Das Photometer"),
  
  
  tabPanel(
    strong("Versuch 1 & 2"),
    titlePanel(h4("")),
    
    
    sidebarPanel(
      sliderTextInput(
        inputId = "slider",
        label = "Konzentration der Lösung in mmol/l:",
        grid = TRUE,
        force_edges = TRUE,
        
        choices = c("10", "5", "2.5", "1.25", "0.625")
        
        
      ),
      br(),
      checkboxInput("check", "Lösung mit unbekannter Konzentration", value = FALSE),
      
      
      conditionalPanel("input.check",
                       ((
                         img(
                           src = "c_unbekannt.jpg",
                           height = 430,
                           width = 430,
                           align = "center"
                         )
                       )))
      
    ),
    
    column(
      5,
      offset = 1,
      mainPanel(conditionalPanel("input.slider=='0.625'",
                                 
                                 ((
                                   img(
                                     src = "C1_16.png",
                                     height = 413,
                                     width = 623,
                                     align = "center"
                                     
                                   )
                                   
                                 ))))
      
      ,
      
      mainPanel(conditionalPanel("input.slider=='1.25'",
                                 
                                 ((
                                   img(
                                     src = "C1_8.png",
                                     height = 413,
                                     width = 609,
                                     align = "center"
                                   )
                                   
                                 ))))
      ,
      
      mainPanel(conditionalPanel("input.slider=='2.5'",
                                 
                                 ((
                                   img(
                                     src = "C1_4.png",
                                     height = 413,
                                     width = 624,
                                     align = "center"
                                   )
                                   
                                 ))))
      ,
      
      mainPanel(conditionalPanel("input.slider=='5'",
                                 
                                 ((
                                   img(
                                     src = "C1_2.png",
                                     height = 413,
                                     width = 595,
                                     align = "center"
                                   )
                                   
                                 ))))
      ,
      
      mainPanel(conditionalPanel("input.slider=='10'",
                                 
                                 ((
                                   img(
                                     src = "C1_1.png",
                                     height = 413,
                                     width = 592,
                                     align = "center"
                                   )
                                   
                                 ))))
    )
    
    
    
  ),
  
  
  
  #
  tabPanel(
    strong("Versuch 3"),
    titlePanel(h4("")),
    
    
    sidebarPanel(
      "",
      sliderTextInput(
        inputId = "dot",
        label = "Belichtung des Röntgenfilms in ms:",
        grid = TRUE,
        force_edges = TRUE,
        
        choices = c("0",
                    "12.5",
                    "25",
                    "50",
                    "100",
                    "200",
                    "400",
                    "800",
                    "1600")
        
        
      )
    ),
    column(
      5,
      offset = 1,
      mainPanel(conditionalPanel("input.dot=='0'",
                                 
                                 ((
                                   img(
                                     src = "0ms.png",
                                     height = 549,
                                     width = 468,
                                     align = "center"
                                   )
                                   
                                 )))),
      
      
      mainPanel(conditionalPanel("input.dot=='12.5'",
                                 
                                 ((
                                   img(
                                     src = "12ms.png",
                                     height = 531,
                                     width = 475,
                                     align = "center"
                                   )
                                   
                                 )))),
      
      mainPanel(conditionalPanel("input.dot=='25'",
                                 
                                 ((
                                   img(
                                     src = "25ms.png",
                                     height = 531,
                                     width = 487,
                                     align = "center"
                                   )
                                   
                                 )))),
      
      mainPanel(conditionalPanel("input.dot=='50'",
                                 
                                 ((
                                   img(
                                     src = "50ms.png",
                                     height = 531,
                                     width = 487,
                                     align = "center"
                                   )
                                   
                                 )))),
      
      mainPanel(conditionalPanel("input.dot=='100'",
                                 
                                 ((
                                   img(
                                     src = "100ms.png",
                                     height = 531,
                                     width = 481,
                                     align = "center"
                                   )
                                   
                                 )))),
      
      mainPanel(conditionalPanel("input.dot=='200'",
                                 
                                 ((
                                   img(
                                     src = "200ms.png",
                                     height = 532,
                                     width = 478,
                                     align = "center"
                                   )
                                   
                                 )))),
      
      mainPanel(conditionalPanel("input.dot=='400'",
                                 
                                 ((
                                   img(
                                     src = "400ms.png",
                                     height = 531,
                                     width = 479,
                                     align = "center"
                                   )
                                   
                                 )))),
      
      mainPanel(conditionalPanel("input.dot=='800'",
                                 
                                 ((
                                   img(
                                     src = "800ms.png",
                                     height = 531,
                                     width = 481,
                                     align = "center"
                                   )
                                   
                                 )))),
      
      mainPanel(conditionalPanel("input.dot=='1600'",
                                 
                                 ((
                                   img(
                                     src = "1600ms.png",
                                     height = 532,
                                     width = 487,
                                     align = "center"
                                   )
                                   
                                 ))))
      #
    )
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui = ui, server = server)
