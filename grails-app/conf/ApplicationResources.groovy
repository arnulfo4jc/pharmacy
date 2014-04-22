modules = {
    application {
        resource url:'js/application.js'
    }

    appScript {
    	dependsOn "jquery"
    	resource url:'js/tooltip.js'
        resource url:'js/application.js'
    }

    app {
    	resource url:"css/app.css"
    }
}