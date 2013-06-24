package com.siscape.estimator



import org.junit.*
import grails.test.mixin.*

@TestFor(HardMoneyLoanController)
@Mock(HardMoneyLoan)
class HardMoneyLoanControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/hardMoneyLoan/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.hardMoneyLoanInstanceList.size() == 0
        assert model.hardMoneyLoanInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.hardMoneyLoanInstance != null
    }

    void testSave() {
        controller.save()

        assert model.hardMoneyLoanInstance != null
        assert view == '/hardMoneyLoan/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/hardMoneyLoan/show/1'
        assert controller.flash.message != null
        assert HardMoneyLoan.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/hardMoneyLoan/list'

        populateValidParams(params)
        def hardMoneyLoan = new HardMoneyLoan(params)

        assert hardMoneyLoan.save() != null

        params.id = hardMoneyLoan.id

        def model = controller.show()

        assert model.hardMoneyLoanInstance == hardMoneyLoan
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/hardMoneyLoan/list'

        populateValidParams(params)
        def hardMoneyLoan = new HardMoneyLoan(params)

        assert hardMoneyLoan.save() != null

        params.id = hardMoneyLoan.id

        def model = controller.edit()

        assert model.hardMoneyLoanInstance == hardMoneyLoan
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/hardMoneyLoan/list'

        response.reset()

        populateValidParams(params)
        def hardMoneyLoan = new HardMoneyLoan(params)

        assert hardMoneyLoan.save() != null

        // test invalid parameters in update
        params.id = hardMoneyLoan.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/hardMoneyLoan/edit"
        assert model.hardMoneyLoanInstance != null

        hardMoneyLoan.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/hardMoneyLoan/show/$hardMoneyLoan.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        hardMoneyLoan.clearErrors()

        populateValidParams(params)
        params.id = hardMoneyLoan.id
        params.version = -1
        controller.update()

        assert view == "/hardMoneyLoan/edit"
        assert model.hardMoneyLoanInstance != null
        assert model.hardMoneyLoanInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/hardMoneyLoan/list'

        response.reset()

        populateValidParams(params)
        def hardMoneyLoan = new HardMoneyLoan(params)

        assert hardMoneyLoan.save() != null
        assert HardMoneyLoan.count() == 1

        params.id = hardMoneyLoan.id

        controller.delete()

        assert HardMoneyLoan.count() == 0
        assert HardMoneyLoan.get(hardMoneyLoan.id) == null
        assert response.redirectedUrl == '/hardMoneyLoan/list'
    }
}
