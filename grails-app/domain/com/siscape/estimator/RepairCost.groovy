package com.siscape.estimator

class RepairCost {
    String costName
    String costCategory
    String description
    BigDecimal materialCost
    BigDecimal laborCost
    String unit
    BigDecimal unitCost
    String formula
    String repairCostSet
    static constraints = {
        costName ()
        costCategory()
        description nullable: true
        materialCost nullable: true, scale: 2
        laborCost nullable: true, scale: 2
        unit nullable: true
        unitCost scale: 2
        formula nullable: true
        repairCostSet nullable: true

    }
}
