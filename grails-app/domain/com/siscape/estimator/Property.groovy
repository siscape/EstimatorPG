package com.siscape.estimator

class Property {
    BigDecimal listPrice
    BigDecimal afterRepairValue
    String location
    String address
    String city
    String state
    Integer zipCode
    String neighborhood
    Integer yearBuilt
    Integer squareFootage
    Integer lotSize
    Integer bedrooms
    Integer bathrooms
    String propertyUrl
    String picturesUrl
    String mlsListing
    String cmaLink
    String status
    String propertyType
    String listingType
    String lastSalePrice
    Boolean hasPool
    String listingAgent
    String notes
    String condition
    String daysOnMarket
    String areaDOM

    static constraints = {
        listPrice nullable: true, scale: 2
        afterRepairValue nullable: true, scale: 2
        location nullable: true
        address ()
        city nullable: true
        state nullable: true
        zipCode nullable: true
        neighborhood nullable: true
        yearBuilt ()
        squareFootage ()
        lotSize nullable: true
        bedrooms nullable: true
        bathrooms nullable: true
        propertyUrl nullable: true, url: true
        picturesUrl nullable: true, url: true
        mlsListing nullable: true,url: true
        cmaLink nullable: true,url: true
        status inList: ["Active", "Pending", "Sold", "Other"]
        propertyType inList: ["Single Home", "Commercial", "Condo", "Multi Unit", "Land"]
        listingType inList: ["REO", "Estate Sale", "Auction", "Pre-Foreclosure", "Tax", "Sale By Owner", "Wholesale"]
        lastSalePrice nullable: true, scale: 2
        hasPool ()
        listingAgent nullable: true
        notes nullable: true
        condition nullable: true
        daysOnMarket nullable: true
        areaDOM nullable: true
    }
}
