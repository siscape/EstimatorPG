package com.siscape.estimator

class HardMoneyLoan {
    HardMoneyLender hardMoneyLender
    BigDecimal amountLoaned
    Integer loanTerm
    BigDecimal holdingCosts
    BigDecimal costOfPoints
    BigDecimal totalHoldingCosts
    BigDecimal totalLoanCosts
    String notes
    static belongsTo = [profitEstimate: ProfitEstimate]

    static constraints = {
    }
}
