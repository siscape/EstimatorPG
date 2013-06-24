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
        hardMoneyLender ()
        amountLoaned scale: 2
        loanTerm  ()
        holdingCosts scale: 2
        costOfPoints scale: 2
        totalHoldingCosts scale: 2
        totalLoanCosts scale: 2
        notes nullable: true, scale: 2
    }
}
