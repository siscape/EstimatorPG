import sample.*
import com.siscape.estimator.*

import org.springframework.web.context.support.WebApplicationContextUtils

class BootStrap {

    def init = { servletContext ->

        def ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext)
        def grailsApplication = ctx.grailsApplication

        //testExcel(ctx, 'xls')
        testExcel(ctx, 'xlsx')
        //testCsv(ctx)
    }

    def testExcel(ctx, fileExt) {
        /*println "==== testExcel = ${fileExt}"

        def importer = ctx.bookImporter.readFromUrl("file:test-data/books.${fileExt}".toURL())
        println "workbook = ${importer.workbook.getClass().name} - ${importer.workbook}"

        def booksMapList = importer.getBooks()
        println "booksMapList = ${booksMapList}"
        booksMapList.each { Map bookParams ->
            def newBook = new Book(bookParams)
            if (!newBook.save()) {
                println "Book1 not saved, errors = ${newBook.errors}"
            }
        } */

        println "==== testExcel = ${fileExt}"

        def importer = ctx.repairCostImporter.readFromUrl("file:test-data/repairCosts.${fileExt}".toURL())
        println "workbook = ${importer.workbook.getClass().name} - ${importer.workbook}"

        def repairCostsMapList = importer.getRepairCosts()
        println "repairCostsMapList = ${repairCostsMapList}"
        repairCostsMapList.each { Map repairCostParams ->
            def newRepairCost = new RepairCost(repairCostParams)
            if (!newRepairCost.save()) {
                println "RepairCost not saved, errors = ${newRepairCost.errors}"
            }
        }

        println "==== testExcel = ${fileExt}"
        String parameterSet = "Set1"
        def newParameterSet = new ParameterSet(setName: parameterSet, author: "Sri", fileLink: "http://parameters.com")
       /* if (!newParameterSet.save()) {
            println "ParameterSet not saved, errors = ${newParameterSet.errors}"
        }*/
        importer = ctx.parameterImporter.readFromUrl("file:test-data/parameters.${fileExt}".toURL())
        println "workbook = ${importer.workbook.getClass().name} - ${importer.workbook}"

        def parametersMapList = importer.getParameters()
        println "parametersMapList = ${parametersMapList}"
        parametersMapList.each { Map parameterParams ->

            def newParameter = new Parameter(parameterParams)
            newParameterSet.addToParameters(newParameter)
          /* if (!newParameter.save()) {
                println "Parameter not saved, errors = ${newParameter.errors}"
            }*/
        }
        if (!newParameterSet.save()) {
            println "ParameterSet not saved, errors = ${newParameterSet.errors}"
        }

/*
        def bookParams = importer.getOneMoreBookParams()
        println "bookParams = ${bookParams}"
        def anotherNewBook = new Book(bookParams)
        if (!anotherNewBook.save()) {
            println "Book2 not saved, errors = ${anotherNewBook.errors}"
        }
*/



        /*def exporter = ctx.bookImporter.readFromUrl("file:test-data/books-empty.${fileExt}".toURL())

        exporter.setBooks(Book.list())
        exporter.setOneMoreBookParams([*: Book.get(3L).properties])

        String exportName = exporter.writeToFile(File.createTempFile('book-', ".${fileExt}").absolutePath)
        println "exported to file = ${exportName}"*/

//		some issues with reading from just exported model in xlsx format
//		println "booksMapList = ${exporter.getBooks()}"
//		println "bookParams = ${exporter.getOneMoreBookParams()}"

    }


    /*def testCsv(ctx) {
        println "==== testCsv"
        BookExcelImporter.BookCsvImporter csvImporter = new BookExcelImporter.BookCsvImporter().readFromUrl("file:test-data/books.csv".toURL())

        def booksMapList = csvImporter.getBooks()
        println "booksMapList = ${booksMapList}"

        BookExcelImporter excelExporter =  csvImporter.copyToExcel(ctx.bookImporter.readFromUrl("file:test-data/books-empty.xls".toURL()))
        String exportName = excelExporter.writeToFile(File.createTempFile('book-', ".xls").absolutePath)
        println "exported to file = ${exportName}"

    }
*/


    def destroy = {
    }
}
