package com.siscape.estimator

class ProfitEstimate {
    Property property
    RepairEstimate repairEstimate
    ParameterSet parameterSet
    String address
    BigDecimal offerPrice
    BigDecimal afterRepairValue
    Integer yearBuilt
    Integer squareFootage
    BigDecimal repairCosts
    BigDecimal totalExpenses
    BigDecimal closingCosts
    BigDecimal realtorFees
    BigDecimal emdRequired
    BigDecimal emdLoanAmount
    BigDecimal emdLoanFee
    BigDecimal cashProfit
    Integer weeksToHold
    BigDecimal totalInvestmentCost
    //Integer weeksToClose
    //Integer weeksToRepair
    //Integer weeksToSell
    //Integer weeksToFlip
    //Date projectedSaleDate

    HardMoneyLoan hardMoneyLoan
    BigDecimal hmlAmount
    BigDecimal hmlCost
    BigDecimal hmlProfit
    BigDecimal gapAmount
    BigDecimal gapCost
    BigDecimal hmlWithGapProfit
    String estimateLink
    String notes
    static hasMany = [gapLoans: GapLoan, expenses: Expense]

    static constraints = {

        address ()
        property nullable: true
        repairEstimate nullable: true
        parameterSet nullable: true
        offerPrice ()
        afterRepairValue ()
        yearBuilt nullable: true
        squareFootage  nullable: true
        repairCosts ()
        expenses nullable: true
        totalExpenses nullable: true
        closingCosts nullable: true
        totalInvestmentCost nullable: true
        realtorFees nullable: true
        emdRequired nullable: true
        emdLoanAmount nullable: true
        emdLoanFee nullable: true
        cashProfit nullable: true
        weeksToHold nullable: true
        hardMoneyLoan nullable: true
        hmlAmount nullable: true
        hmlCost  nullable: true
        hmlProfit nullable: true
        gapLoans nullable: true
        gapAmount nullable: true
        gapCost nullable: true
        hmlWithGapProfit nullable: true
        estimateLink nullable: true, url: true
        notes nullable: true

    }
}
