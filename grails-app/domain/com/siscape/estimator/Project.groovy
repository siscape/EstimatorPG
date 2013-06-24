package com.siscape.estimator

class Project {
    String projectType
    String projectStatus
    Date startDate
    Date endDate
    BigDecimal projectedProfit
    Boolean isStarred
    Property property
    RepairEstimate repairEstimate
    ProfitEstimate profitEstimate

    static constraints = {
        projectType inList: ["Flip", "Other"]
        projectStatus inList: ["Draft", "Active", "Completed"]
        startDate nullable: true
        endDate nullable: true
        projectedProfit nullable: true, scale: 2
        isStarred ()
        property nullable: true
        repairEstimate nullable: true
        profitEstimate nullable: true
    }
}
