package com.siscape.estimator

class GapLoan {
    GapFunder gapFunder
    String loanPurpose
    BigDecimal amountLoaned
    BigDecimal loanFees
    BigDecimal totalLoanCost
    String loanTerms
    Date dueDate
    String notes

    static belongsTo = [profitEstimate: ProfitEstimate]

    static constraints = {

        gapFunder    ()
        loanPurpose nullable: true
        amountLoaned scale: 2
        loanFees scale: 2, nullable: true
        totalLoanCost scale: 2
        loanTerms nullable: true
        dueDate nullable: true
        notes nullable: true

    }
}
