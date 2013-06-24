package com.siscape.estimator



import org.junit.*
import grails.test.mixin.*

@TestFor(RepairItemController)
@Mock(RepairItem)
class RepairItemControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/repairItem/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.repairItemInstanceList.size() == 0
        assert model.repairItemInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.repairItemInstance != null
    }

    void testSave() {
        controller.save()

        assert model.repairItemInstance != null
        assert view == '/repairItem/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/repairItem/show/1'
        assert controller.flash.message != null
        assert RepairItem.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/repairItem/list'

        populateValidParams(params)
        def repairItem = new RepairItem(params)

        assert repairItem.save() != null

        params.id = repairItem.id

        def model = controller.show()

        assert model.repairItemInstance == repairItem
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/repairItem/list'

        populateValidParams(params)
        def repairItem = new RepairItem(params)

        assert repairItem.save() != null

        params.id = repairItem.id

        def model = controller.edit()

        assert model.repairItemInstance == repairItem
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/repairItem/list'

        response.reset()

        populateValidParams(params)
        def repairItem = new RepairItem(params)

        assert repairItem.save() != null

        // test invalid parameters in update
        params.id = repairItem.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/repairItem/edit"
        assert model.repairItemInstance != null

        repairItem.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/repairItem/show/$repairItem.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        repairItem.clearErrors()

        populateValidParams(params)
        params.id = repairItem.id
        params.version = -1
        controller.update()

        assert view == "/repairItem/edit"
        assert model.repairItemInstance != null
        assert model.repairItemInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/repairItem/list'

        response.reset()

        populateValidParams(params)
        def repairItem = new RepairItem(params)

        assert repairItem.save() != null
        assert RepairItem.count() == 1

        params.id = repairItem.id

        controller.delete()

        assert RepairItem.count() == 0
        assert RepairItem.get(repairItem.id) == null
        assert response.redirectedUrl == '/repairItem/list'
    }
}
