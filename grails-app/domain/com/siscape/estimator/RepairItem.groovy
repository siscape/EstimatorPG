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
    static belongsTo = RepairEstimate
    static constraints = {
        repairCategory inList: ["ROOFING", "EXTERIOR", "INTERIOR", "LANDSCAPE", "ELECTRICAL",
                "HVAC", "KITCHEN", "BATH", "FLOORING", "PLUMBING", "STRUCTURAL", "HAZMAT", "MISC"]
        itemName()
        unitAmount()
        repairCost (nullable: true)
        itemCost scale: 2
        notes nullable: true
        itemImage nullable: true, url: true
        dueDate nullable: true
    }
}
