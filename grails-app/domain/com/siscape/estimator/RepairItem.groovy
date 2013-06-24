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
        repairCategory  inList: ["Roofing", "Exterior", "Interior", "Landscape", "Electrical",
                "HVAC", "Kitchen", "Bath", "Flooring", "Plumbing", "Structural", "HAZMAT", "Misc"]
        itemName()
        unitAmount()
        repairCost (nullable: true)
        itemCost scale: 2
        notes nullable: true
        itemImage nullable: true, url: true
        dueDate nullable: true
    }
}
