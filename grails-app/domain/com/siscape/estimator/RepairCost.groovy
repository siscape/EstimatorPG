package com.siscape.estimator

class RepairCost {
    String costName
    String costCategory
    BigDecimal materialCost
    BigDecimal laborCost
    BigDecimal unit
    BigDecimal unitCost
    static constraints = {
        costName ()
        costCategory inList: ["Roofing", "Exterior", "Interior", "Landscape", "Electrical",
                "HVAC", "Kitchen", "Bath", "Flooring", "Plumbing", "Structural", "HAZMAT", "Misc"]
        materialCost nullable: true, scale: 2
        laborCost nullable: true, scale: 2
        unit nullable: true
        unitCost scale: 2
    }
}
