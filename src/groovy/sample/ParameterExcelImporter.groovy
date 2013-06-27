package sample

import excelimport.AbstractCsvImporter
import excelimport.AbstractExcelImporter
import excelimport.DefaultImportCellCollector
import excelimport.ImportSeverityMappingEnum

import static excelimport.ExpectedPropertyType.DateType
import static excelimport.ExpectedPropertyType.IntType

class ParameterExcelImporter extends AbstractExcelImporter  {

	def static cellReporter = new DefaultImportCellCollector()

	def excelImportService

	static Map configuratiomMap = [
			dateIssued: ([expectedType: DateType, defaultValue: null]),
			dateIssuedError: ([expectedType: DateType, defaultValue: null]),
			numSold: ([expectedType: IntType, defaultValue: 1, severityMapping: ImportSeverityMappingEnum.ErrorAll, userViewableName:'Quantity']),
	]


	static Map CONFIG_PARAMETER_CELL_MAP = [
			sheet: 'Sheet2',
			cellMap: ['D3': 'title',
					'D4': 'author',
					'D6': 'numSold',
					'D8': 'dateIssued',
					'D9': 'dateIssuedError',
			]
	]

	static Map CONFIG_PARAMETER_COLUMN_MAP = [
			sheet: 'calculations',
			startRow: 1,
			columnMap: [
					'A': 'parameter',
					'B': 'formula',
                    'C': 'sortOrder',
			]
	]

	public ParameterExcelImporter(fileName) {
		super(fileName)
	}

	public ParameterExcelImporter() {
		super()
	}

	List<Map> getParameters() {
		excelImportService.columns(
			workbook,
			CONFIG_PARAMETER_COLUMN_MAP,
			cellReporter,
			configuratiomMap
		)
	}

	/**
	 * dual getParameters(
	 */
	void setParameters(parameterList) {
		excelImportService.setColumns(
			parameterList,
			workbook,
			CONFIG_PARAMETER_COLUMN_MAP,
			configuratiomMap
		)
	}


	Map getOneMoreParameterParams() {
		excelImportService.cells (
			workbook,
			CONFIG_PARAMETER_CELL_MAP,
			cellReporter,
			configuratiomMap
		)
	}

	/**
	 * dual getOneMoreParameterParams(
	 */
	void setOneMoreParameterParams(Map parameterParams) {
		excelImportService.setValues(
			parameterParams,
			workbook,
			CONFIG_PARAMETER_CELL_MAP,
			configuratiomMap
		)
	}


	static class ParameterCsvImporter extends AbstractCsvImporter {

		static Map configMap = [
			startRow: 1,
			columnMap: [
				0: 'title',
				1: 'author',
				2: 'numSold'
			]
		]

		List<Map> getParameters() {
			getData(configMap)
		}

		def copyToExcel(ParameterExcelImporter excelExporter) {
			def parametersMapList = this.getParameters()
			excelExporter.setParameters(parametersMapList)
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


