package com.siscape.estimator



import org.junit.*
import grails.test.mixin.*

@TestFor(ParameterSetController)
@Mock(ParameterSet)
class ParameterSetControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/parameterSet/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.parameterSetInstanceList.size() == 0
        assert model.parameterSetInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.parameterSetInstance != null
    }

    void testSave() {
        controller.save()

        assert model.parameterSetInstance != null
        assert view == '/parameterSet/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/parameterSet/show/1'
        assert controller.flash.message != null
        assert ParameterSet.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/parameterSet/list'

        populateValidParams(params)
        def parameterSet = new ParameterSet(params)

        assert parameterSet.save() != null

        params.id = parameterSet.id

        def model = controller.show()

        assert model.parameterSetInstance == parameterSet
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/parameterSet/list'

        populateValidParams(params)
        def parameterSet = new ParameterSet(params)

        assert parameterSet.save() != null

        params.id = parameterSet.id

        def model = controller.edit()

        assert model.parameterSetInstance == parameterSet
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/parameterSet/list'

        response.reset()

        populateValidParams(params)
        def parameterSet = new ParameterSet(params)

        assert parameterSet.save() != null

        // test invalid parameters in update
        params.id = parameterSet.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/parameterSet/edit"
        assert model.parameterSetInstance != null

        parameterSet.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/parameterSet/show/$parameterSet.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        parameterSet.clearErrors()

        populateValidParams(params)
        params.id = parameterSet.id
        params.version = -1
        controller.update()

        assert view == "/parameterSet/edit"
        assert model.parameterSetInstance != null
        assert model.parameterSetInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/parameterSet/list'

        response.reset()

        populateValidParams(params)
        def parameterSet = new ParameterSet(params)

        assert parameterSet.save() != null
        assert ParameterSet.count() == 1

        params.id = parameterSet.id

        controller.delete()

        assert ParameterSet.count() == 0
        assert ParameterSet.get(parameterSet.id) == null
        assert response.redirectedUrl == '/parameterSet/list'
    }
}
