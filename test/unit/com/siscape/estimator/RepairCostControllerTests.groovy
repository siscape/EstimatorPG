package com.siscape.estimator



import org.junit.*
import grails.test.mixin.*

@TestFor(RepairCostController)
@Mock(RepairCost)
class RepairCostControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/repairCost/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.repairCostInstanceList.size() == 0
        assert model.repairCostInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.repairCostInstance != null
    }

    void testSave() {
        controller.save()

        assert model.repairCostInstance != null
        assert view == '/repairCost/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/repairCost/show/1'
        assert controller.flash.message != null
        assert RepairCost.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/repairCost/list'

        populateValidParams(params)
        def repairCost = new RepairCost(params)

        assert repairCost.save() != null

        params.id = repairCost.id

        def model = controller.show()

        assert model.repairCostInstance == repairCost
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/repairCost/list'

        populateValidParams(params)
        def repairCost = new RepairCost(params)

        assert repairCost.save() != null

        params.id = repairCost.id

        def model = controller.edit()

        assert model.repairCostInstance == repairCost
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/repairCost/list'

        response.reset()

        populateValidParams(params)
        def repairCost = new RepairCost(params)

        assert repairCost.save() != null

        // test invalid parameters in update
        params.id = repairCost.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/repairCost/edit"
        assert model.repairCostInstance != null

        repairCost.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/repairCost/show/$repairCost.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        repairCost.clearErrors()

        populateValidParams(params)
        params.id = repairCost.id
        params.version = -1
        controller.update()

        assert view == "/repairCost/edit"
        assert model.repairCostInstance != null
        assert model.repairCostInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/repairCost/list'

        response.reset()

        populateValidParams(params)
        def repairCost = new RepairCost(params)

        assert repairCost.save() != null
        assert RepairCost.count() == 1

        params.id = repairCost.id

        controller.delete()

        assert RepairCost.count() == 0
        assert RepairCost.get(repairCost.id) == null
        assert response.redirectedUrl == '/repairCost/list'
    }
}
