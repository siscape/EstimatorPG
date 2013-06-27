package com.siscape.estimator

class Parameter {
    String parameter
    String formula
    Integer sortOrder
    static belongsTo = ParameterSet
    static constraints = {
        parameter nullable: true
        formula nullable: true
        sortOrder nullable: true
    }
}
