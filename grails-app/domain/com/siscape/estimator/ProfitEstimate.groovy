package com.siscape.estimator

class ProfitEstimate {
    Property property
    RepairEstimate repairEstimate
    BigDecimal offerPrice
    BigDecimal afterRepairValue
    BigDecimal repairCosts
    BigDecimal totalExpenses
    BigDecimal closingCosts
    BigDecimal realtorFees
    BigDecimal totalInvestmentCost
    Float offerToList
    BigDecimal emdRequired
    Boolean usingEmdLoan
    BigDecimal emdLoanFee
    BigDecimal cashProfit
    Integer weeksToClose
    Integer weeksToRepair
    Integer weeksToSell
    Integer weeksToFlip
    Date projectedSaleDate

    Boolean usingHML
    BigDecimal hmlAmount
    BigDecimal hmlCost
    BigDecimal hmlProfit
    Boolean usingGapFunding
    BigDecimal gapAmount
    BigDecimal gapCost
    BigDecimal hmlWithGapProfit
    HardMoneyLoan hardMoneyLoan
    Float roi
    String estimateLink
    String notes
    static hasMany = [expenses: Expense, gapLoans: GapLoan]

    static constraints = {
    }
}
