package com.siscape.estimator

class RepairItem {
    String repairCategory
    String itemName
    BigDecimal unitAmount
    RepairCost repairCost
    BigDecimal itemCost
    String notes
    String itemImage
    Date dueDate
    static belongsTo = [repairEstimate: RepairEstimate]
    static constraints = {
    }
}
