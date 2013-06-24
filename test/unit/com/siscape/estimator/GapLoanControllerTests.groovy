package com.siscape.estimator



import org.junit.*
import grails.test.mixin.*

@TestFor(GapLoanController)
@Mock(GapLoan)
class GapLoanControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/gapLoan/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.gapLoanInstanceList.size() == 0
        assert model.gapLoanInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.gapLoanInstance != null
    }

    void testSave() {
        controller.save()

        assert model.gapLoanInstance != null
        assert view == '/gapLoan/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/gapLoan/show/1'
        assert controller.flash.message != null
        assert GapLoan.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/gapLoan/list'

        populateValidParams(params)
        def gapLoan = new GapLoan(params)

        assert gapLoan.save() != null

        params.id = gapLoan.id

        def model = controller.show()

        assert model.gapLoanInstance == gapLoan
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/gapLoan/list'

        populateValidParams(params)
        def gapLoan = new GapLoan(params)

        assert gapLoan.save() != null

        params.id = gapLoan.id

        def model = controller.edit()

        assert model.gapLoanInstance == gapLoan
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/gapLoan/list'

        response.reset()

        populateValidParams(params)
        def gapLoan = new GapLoan(params)

        assert gapLoan.save() != null

        // test invalid parameters in update
        params.id = gapLoan.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/gapLoan/edit"
        assert model.gapLoanInstance != null

        gapLoan.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/gapLoan/show/$gapLoan.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        gapLoan.clearErrors()

        populateValidParams(params)
        params.id = gapLoan.id
        params.version = -1
        controller.update()

        assert view == "/gapLoan/edit"
        assert model.gapLoanInstance != null
        assert model.gapLoanInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/gapLoan/list'

        response.reset()

        populateValidParams(params)
        def gapLoan = new GapLoan(params)

        assert gapLoan.save() != null
        assert GapLoan.count() == 1

        params.id = gapLoan.id

        controller.delete()

        assert GapLoan.count() == 0
        assert GapLoan.get(gapLoan.id) == null
        assert response.redirectedUrl == '/gapLoan/list'
    }
}
