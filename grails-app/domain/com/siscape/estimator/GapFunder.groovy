package com.siscape.estimator

class GapFunder {
    String funderName
    String feeType
    BigDecimal feeRate
    BigDecimal gapFees
    BigDecimal gapPoints
    String gapTerms
    String notes
    static constraints = {
        funderName nullable: false
        feeType inList: ["Flat", "APR"]
        feeRate scale: 2, nullable: true
        gapFees scale: 2, nullable: true
        gapPoints scale: 2, nullable: true
        gapTerms nullable: true
        notes nullable: true
    }
}
