package com.siscape.estimator

class ParameterSet {
    String setName
    String author
    String fileLink
    static hasMany = [parameters: Parameter]

    static constraints = {

        setName nullable: true
        author nullable: true
        fileLink nullable: true, url: true
        parameters nullable: true
    }
}
