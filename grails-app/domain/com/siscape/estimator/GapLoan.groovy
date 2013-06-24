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
    }
}
