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
    }
}
