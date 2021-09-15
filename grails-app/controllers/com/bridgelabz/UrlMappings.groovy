package com.bridgelabz

class UrlMappings {
    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"( controller:"all", view:"/employee/all" )
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
