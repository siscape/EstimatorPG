package com.siscape.estimator



import org.junit.*
import grails.test.mixin.*

@TestFor(GapFunderController)
@Mock(GapFunder)
class GapFunderControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/gapFunder/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.gapFunderInstanceList.size() == 0
        assert model.gapFunderInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.gapFunderInstance != null
    }

    void testSave() {
        controller.save()

        assert model.gapFunderInstance != null
        assert view == '/gapFunder/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/gapFunder/show/1'
        assert controller.flash.message != null
        assert GapFunder.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/gapFunder/list'

        populateValidParams(params)
        def gapFunder = new GapFunder(params)

        assert gapFunder.save() != null

        params.id = gapFunder.id

        def model = controller.show()

        assert model.gapFunderInstance == gapFunder
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/gapFunder/list'

        populateValidParams(params)
        def gapFunder = new GapFunder(params)

        assert gapFunder.save() != null

        params.id = gapFunder.id

        def model = controller.edit()

        assert model.gapFunderInstance == gapFunder
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/gapFunder/list'

        response.reset()

        populateValidParams(params)
        def gapFunder = new GapFunder(params)

        assert gapFunder.save() != null

        // test invalid parameters in update
        params.id = gapFunder.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/gapFunder/edit"
        assert model.gapFunderInstance != null

        gapFunder.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/gapFunder/show/$gapFunder.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        gapFunder.clearErrors()

        populateValidParams(params)
        params.id = gapFunder.id
        params.version = -1
        controller.update()

        assert view == "/gapFunder/edit"
        assert model.gapFunderInstance != null
        assert model.gapFunderInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/gapFunder/list'

        response.reset()

        populateValidParams(params)
        def gapFunder = new GapFunder(params)

        assert gapFunder.save() != null
        assert GapFunder.count() == 1

        params.id = gapFunder.id

        controller.delete()

        assert GapFunder.count() == 0
        assert GapFunder.get(gapFunder.id) == null
        assert response.redirectedUrl == '/gapFunder/list'
    }
}
