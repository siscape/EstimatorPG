package com.siscape.estimator



import org.junit.*
import grails.test.mixin.*

@TestFor(HardMoneyLenderController)
@Mock(HardMoneyLender)
class HardMoneyLenderControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/hardMoneyLender/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.hardMoneyLenderInstanceList.size() == 0
        assert model.hardMoneyLenderInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.hardMoneyLenderInstance != null
    }

    void testSave() {
        controller.save()

        assert model.hardMoneyLenderInstance != null
        assert view == '/hardMoneyLender/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/hardMoneyLender/show/1'
        assert controller.flash.message != null
        assert HardMoneyLender.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/hardMoneyLender/list'

        populateValidParams(params)
        def hardMoneyLender = new HardMoneyLender(params)

        assert hardMoneyLender.save() != null

        params.id = hardMoneyLender.id

        def model = controller.show()

        assert model.hardMoneyLenderInstance == hardMoneyLender
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/hardMoneyLender/list'

        populateValidParams(params)
        def hardMoneyLender = new HardMoneyLender(params)

        assert hardMoneyLender.save() != null

        params.id = hardMoneyLender.id

        def model = controller.edit()

        assert model.hardMoneyLenderInstance == hardMoneyLender
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/hardMoneyLender/list'

        response.reset()

        populateValidParams(params)
        def hardMoneyLender = new HardMoneyLender(params)

        assert hardMoneyLender.save() != null

        // test invalid parameters in update
        params.id = hardMoneyLender.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/hardMoneyLender/edit"
        assert model.hardMoneyLenderInstance != null

        hardMoneyLender.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/hardMoneyLender/show/$hardMoneyLender.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        hardMoneyLender.clearErrors()

        populateValidParams(params)
        params.id = hardMoneyLender.id
        params.version = -1
        controller.update()

        assert view == "/hardMoneyLender/edit"
        assert model.hardMoneyLenderInstance != null
        assert model.hardMoneyLenderInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/hardMoneyLender/list'

        response.reset()

        populateValidParams(params)
        def hardMoneyLender = new HardMoneyLender(params)

        assert hardMoneyLender.save() != null
        assert HardMoneyLender.count() == 1

        params.id = hardMoneyLender.id

        controller.delete()

        assert HardMoneyLender.count() == 0
        assert HardMoneyLender.get(hardMoneyLender.id) == null
        assert response.redirectedUrl == '/hardMoneyLender/list'
    }
}
