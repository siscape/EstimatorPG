package com.siscape.estimator

class Expense {
    String expenseName
    BigDecimal cost
    static belongsTo = [profitEstimate: ProfitEstimate]
    static constraints = {
     expenseName nullable: false
     cost scale: 2
    }
}
