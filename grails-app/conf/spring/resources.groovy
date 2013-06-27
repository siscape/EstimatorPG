// Place your Spring DSL code here
beans = {
    bookImporter(sample.BookExcelImporter) { bean ->
        excelImportService = ref ('excelImportService')
        bean.scope = 'prototype'
    }
    repairCostImporter(sample.RepairCostExcelImporter) { bean ->
        excelImportService = ref ('excelImportService')
        bean.scope = 'prototype'
    }
    parameterImporter(sample.ParameterExcelImporter) { bean ->
        excelImportService = ref ('excelImportService')
        bean.scope = 'prototype'
    }
   
}
