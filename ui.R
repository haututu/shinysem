ui <- dashboardPage(
    
    # Header
    dashboardHeader(title = "Basic dashboard"),
    
    # Sidebar
    dashboardSidebar(
        sidebarMenu(
            menuItem("Prepare data", tabName = "prepare", icon = icon("table")),
            menuItem("Construct model", tabName = "model", icon = icon("fas fa-sitemap")),
            menuItem("Analyse results", tabName = "results", icon = icon("fas fa-file-signature"))
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
            modelTab,
            
            # Show results
            resultsTab
            
        )
    )
)