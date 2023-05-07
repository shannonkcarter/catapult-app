source(here::here("read-data.R"))

function(request){
  shinyUI(
    tagList(
      shinyjs::useShinyjs(),
      tags$head(
        HTML("<title>Team Datapult</title>"),
        tags$script(src="https://kit.fontawesome.com/8abb217f2e.js", crossorigin="anonymous"),
        tags$link(rel="shortcut icon", href="favicon.png"),
        tags$link(rel = "stylesheet", type = "text/css", href = "custom.css"),
        tags$script(HTML("$('body').addClass('fixed');")),
        tags$link(rel="stylesheet", href="https://fonts.googleapis.com/css2?family=Cabin:wght@400;500;600;700&display=swap"),
        tags$link(rel="stylesheet", href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,400&display=swap"),
        tags$link(rel="stylesheet", href="https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,400&display=swap"),
  
        
      ),
      
      navbarPage(
        id = "tab_being_displayed",
        selected = "home",
        collapsible = T,
        position = c("fixed-top"),
        title = a(img(src="catapult.jpeg", class="aht-logo", height = 70), type="link", href="https://teamcatapult.org/"),
      
        tabPanel(title = "Home", value = "home",
                 br(),
                 br(),
                 br(),
                 br(),
                 p("hii")
        ) # close home
        
        ) # close navbarPage
    ) # close tagList
  ) # close whole UI
}