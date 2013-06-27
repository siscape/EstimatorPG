package sample

import excelimport.AbstractCsvImporter
import excelimport.AbstractExcelImporter
import excelimport.DefaultImportCellCollector
import excelimport.ImportSeverityMappingEnum

import static excelimport.ExpectedPropertyType.DateType
import static excelimport.ExpectedPropertyType.IntType

class RepairCostExcelImporter extends AbstractExcelImporter  {

	def static cellReporter = new DefaultImportCellCollector()

	def excelImportService

	static Map configuratiomMap = [
			dateIssued: ([expectedType: DateType, defaultValue: null]),
			dateIssuedError: ([expectedType: DateType, defaultValue: null]),
			numSold: ([expectedType: IntType, defaultValue: 1, severityMapping: ImportSeverityMappingEnum.ErrorAll, userViewableName:'Quantity']),
	]


	static Map CONFIG_REPAIR_COST_CELL_MAP = [
			sheet: 'Sheet2',
			cellMap: ['D3': 'title',
					'D4': 'author',
					'D6': 'numSold',
					'D8': 'dateIssued',
					'D9': 'dateIssuedError',
			]
	]

	static Map CONFIG_REPAIR_COST_COLUMN_MAP = [
			sheet: 'Sheet1',
			startRow: 2,
			columnMap: [
					'A': 'costName',
					'B': 'costCategory',
					'C': 'description',
					'D': 'unit',
					'E': 'unitCost',
					'F': 'formula',
			]
	]

	public RepairCostExcelImporter(fileName) {
		super(fileName)
	}

	public RepairCostExcelImporter() {
		super()
	}

	List<Map> getRepairCosts() {
		excelImportService.columns(
			workbook,
			CONFIG_REPAIR_COST_COLUMN_MAP,
			cellReporter,
			configuratiomMap
		)
	}

	/**
	 * dual getRepairCosts(
	 */
	void setRepairCosts(repairCostList) {
		excelImportService.setColumns(
			repairCostList,
			workbook,
			CONFIG_REPAIR_COST_COLUMN_MAP,
			configuratiomMap
		)
	}


	Map getOneMoreRepairCostParams() {
		excelImportService.cells (
			workbook,
			CONFIG_REPAIR_COST_CELL_MAP,
			cellReporter,
			configuratiomMap
		)
	}

	/**
	 * dual getOneMoreRepairCostParams(
	 */
	void setOneMoreRepairCostParams(Map repairCostParams) {
		excelImportService.setValues(
			repairCostParams,
			workbook,
			CONFIG_REPAIR_COST_CELL_MAP,
			configuratiomMap
		)
	}


	static class RepairCostCsvImporter extends AbstractCsvImporter {

		static Map configMap = [
			startRow: 1,
			columnMap: [
				0: 'title',
				1: 'author',
				2: 'numSold'
			]
		]

		List<Map> getRepairCosts() {
			getData(configMap)
		}

		def copyToExcel(RepairCostExcelImporter excelExporter) {
			def repairCostsMapList = this.getRepairCosts()
			excelExporter.setRepairCosts(repairCostsMapList)
			return excelExporter
		}
	}


def copyFromCsv(csvFormat) {
		def currentSheet = workbook.getSheet('Sheet1')
		csvFormat.tokensList.eachWithIndex {tokens, rowIndex ->
			def row = currentSheet.getRow(rowIndex) ?: currentSheet.createRow(rowIndex)
			tokens.eachWithIndex {value, colIndex ->
				excelImportService.setCellValueByColIndex(value, row, colIndex)
			}
		}
		return this
	}


}


