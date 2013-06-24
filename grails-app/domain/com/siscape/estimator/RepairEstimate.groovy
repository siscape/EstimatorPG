package com.siscape.estimator

class RepairEstimate {
    Property property
    BigDecimal totalRepairCost
    Integer weeksToRepair
    String contractor
    String bidSheetLink
    String repairImageLink
    String repairFilesLink
    String notes
    static hasMany = [repairItems: RepairItem]
    static constraints = {
        property()
        totalRepairCost scale: 2
        weeksToRepair nullable: true
        contractor nullable: true
        bidSheetLink nullable: true, url: true
        repairImageLink nullable: true, url: true
        repairFilesLink nullable: true, url: true
        notes nullable: true
        repairItems()
    }
}
