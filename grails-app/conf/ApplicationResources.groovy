modules = {
    application {
        resource url:'js/application.js'
    }
    calculate {
        dependsOn 'jquery'
        resource url: 'js/application.js'
        resource url: 'js/calculate.js'
    }
}