package com.siscape.estimator

class Expense {
    String expenseName
    BigDecimal cost

    static constraints = {
     expenseName nullable: false
     cost scale: 2
    }
}
