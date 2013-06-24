package com.siscape.estimator



import org.junit.*
import grails.test.mixin.*

@TestFor(ProfitEstimateController)
@Mock(ProfitEstimate)
class ProfitEstimateControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/profitEstimate/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.profitEstimateInstanceList.size() == 0
        assert model.profitEstimateInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.profitEstimateInstance != null
    }

    void testSave() {
        controller.save()

        assert model.profitEstimateInstance != null
        assert view == '/profitEstimate/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/profitEstimate/show/1'
        assert controller.flash.message != null
        assert ProfitEstimate.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/profitEstimate/list'

        populateValidParams(params)
        def profitEstimate = new ProfitEstimate(params)

        assert profitEstimate.save() != null

        params.id = profitEstimate.id

        def model = controller.show()

        assert model.profitEstimateInstance == profitEstimate
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/profitEstimate/list'

        populateValidParams(params)
        def profitEstimate = new ProfitEstimate(params)

        assert profitEstimate.save() != null

        params.id = profitEstimate.id

        def model = controller.edit()

        assert model.profitEstimateInstance == profitEstimate
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/profitEstimate/list'

        response.reset()

        populateValidParams(params)
        def profitEstimate = new ProfitEstimate(params)

        assert profitEstimate.save() != null

        // test invalid parameters in update
        params.id = profitEstimate.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/profitEstimate/edit"
        assert model.profitEstimateInstance != null

        profitEstimate.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/profitEstimate/show/$profitEstimate.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        profitEstimate.clearErrors()

        populateValidParams(params)
        params.id = profitEstimate.id
        params.version = -1
        controller.update()

        assert view == "/profitEstimate/edit"
        assert model.profitEstimateInstance != null
        assert model.profitEstimateInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/profitEstimate/list'

        response.reset()

        populateValidParams(params)
        def profitEstimate = new ProfitEstimate(params)

        assert profitEstimate.save() != null
        assert ProfitEstimate.count() == 1

        params.id = profitEstimate.id

        controller.delete()

        assert ProfitEstimate.count() == 0
        assert ProfitEstimate.get(profitEstimate.id) == null
        assert response.redirectedUrl == '/profitEstimate/list'
    }
}
