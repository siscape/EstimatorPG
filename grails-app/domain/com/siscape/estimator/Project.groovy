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
    }
}
