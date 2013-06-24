package com.siscape.estimator



import org.junit.*
import grails.test.mixin.*

@TestFor(RepairEstimateController)
@Mock(RepairEstimate)
class RepairEstimateControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/repairEstimate/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.repairEstimateInstanceList.size() == 0
        assert model.repairEstimateInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.repairEstimateInstance != null
    }

    void testSave() {
        controller.save()

        assert model.repairEstimateInstance != null
        assert view == '/repairEstimate/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/repairEstimate/show/1'
        assert controller.flash.message != null
        assert RepairEstimate.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/repairEstimate/list'

        populateValidParams(params)
        def repairEstimate = new RepairEstimate(params)

        assert repairEstimate.save() != null

        params.id = repairEstimate.id

        def model = controller.show()

        assert model.repairEstimateInstance == repairEstimate
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/repairEstimate/list'

        populateValidParams(params)
        def repairEstimate = new RepairEstimate(params)

        assert repairEstimate.save() != null

        params.id = repairEstimate.id

        def model = controller.edit()

        assert model.repairEstimateInstance == repairEstimate
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/repairEstimate/list'

        response.reset()

        populateValidParams(params)
        def repairEstimate = new RepairEstimate(params)

        assert repairEstimate.save() != null

        // test invalid parameters in update
        params.id = repairEstimate.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/repairEstimate/edit"
        assert model.repairEstimateInstance != null

        repairEstimate.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/repairEstimate/show/$repairEstimate.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        repairEstimate.clearErrors()

        populateValidParams(params)
        params.id = repairEstimate.id
        params.version = -1
        controller.update()

        assert view == "/repairEstimate/edit"
        assert model.repairEstimateInstance != null
        assert model.repairEstimateInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/repairEstimate/list'

        response.reset()

        populateValidParams(params)
        def repairEstimate = new RepairEstimate(params)

        assert repairEstimate.save() != null
        assert RepairEstimate.count() == 1

        params.id = repairEstimate.id

        controller.delete()

        assert RepairEstimate.count() == 0
        assert RepairEstimate.get(repairEstimate.id) == null
        assert response.redirectedUrl == '/repairEstimate/list'
    }
}
