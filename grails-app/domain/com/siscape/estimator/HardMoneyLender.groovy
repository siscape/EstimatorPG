package com.siscape.estimator

class HardMoneyLender {
    String lenderName
    BigDecimal points
    BigDecimal interestRate
    BigDecimal loanToValue
    BigDecimal percentDown
    Integer loanTermMonths
    BigDecimal loanFees
    String lendingArea
    String notes
    static constraints = {
        lenderName ()
        points scale: 2
        interestRate scale: 2
        loanToValue scale: 2
        percentDown scale: 2
        loanTermMonths nullable: true
        loanFees scale: 2
        lendingArea nullable: true
        notes nullable: true
    }
}
