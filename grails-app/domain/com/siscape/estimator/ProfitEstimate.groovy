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
    BigDecimal offerToList
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
    BigDecimal roi
    String estimateLink
    String notes
    static hasMany = [expenses: Expense, gapLoans: GapLoan]

    static constraints = {
        property ()
        repairEstimate ()
        offerPrice scale: 2
        afterRepairValue scale: 2
        repairCosts scale: 2
        expenses()
        totalExpenses scale: 2
        closingCosts scale: 2
        realtorFees scale: 2
        totalInvestmentCost scale: 2
        offerToList nullable: true, scale: 2
        emdRequired nullable: true, scale: 2
        usingEmdLoan ()
        emdLoanFee nullable: true, scale: 2
        cashProfit nullable: true, scale: 2
        weeksToClose nullable: true
        weeksToRepair nullable: true
        weeksToSell nullable: true
        weeksToFlip nullable: true
        projectedSaleDate ()
        usingHML ()
        hardMoneyLoan ()
        hmlAmount nullable: true, scale: 2
        hmlCost nullable: true, scale: 2
        hmlProfit nullable: true, scale: 2
        usingGapFunding ()
        gapLoans ()
        gapAmount nullable: true, scale: 2
        gapCost nullable: true, scale: 2
        hmlWithGapProfit nullable: true, scale: 2

        roi nullable: true, scale: 2
        estimateLink nullable: true,url: true
        notes nullable: true
    }
}
