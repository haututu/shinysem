ui <- dashboardPage(
    
    # Header
    dashboardHeader(title = "Shiny SEM"),
    
    # Sidebar
    dashboardSidebar(
        sidebarMenu(
            menuItem("Prepare data", tabName = "prepare", icon = icon("table")),
            menuItem("Path modelling", tabName = "path", icon = icon("fas fa-sitemap")),
            menuItem("LPA/LCA", tabName = "lpa", icon = icon("fas fa-file-signature"))
        )
    ),
    
    # Body
    dashboardBody(
        # Allows show/hide
        useShinyjs(),
        
        ### changing theme
        shinyDashboardThemes(
            theme = "blue_gradient"
        ),
        
        tabItems(
            # Load and prepare dataset
            prepareTab,
            
            # Construct a model
            pathTab,
            
            # Show results
            lpaTab
            
        )
    )
)