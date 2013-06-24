package com.siscape.estimator

import org.springframework.dao.DataIntegrityViolationException

class GapFunderController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [gapFunderInstanceList: GapFunder.list(params), gapFunderInstanceTotal: GapFunder.count()]
    }

    def create() {
        [gapFunderInstance: new GapFunder(params)]
    }

    def save() {
        def gapFunderInstance = new GapFunder(params)
        if (!gapFunderInstance.save(flush: true)) {
            render(view: "create", model: [gapFunderInstance: gapFunderInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'gapFunder.label', default: 'GapFunder'), gapFunderInstance.id])
        redirect(action: "show", id: gapFunderInstance.id)
    }

    def show(Long id) {
        def gapFunderInstance = GapFunder.get(id)
        if (!gapFunderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'gapFunder.label', default: 'GapFunder'), id])
            redirect(action: "list")
            return
        }

        [gapFunderInstance: gapFunderInstance]
    }

    def edit(Long id) {
        def gapFunderInstance = GapFunder.get(id)
        if (!gapFunderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'gapFunder.label', default: 'GapFunder'), id])
            redirect(action: "list")
            return
        }

        [gapFunderInstance: gapFunderInstance]
    }

    def update(Long id, Long version) {
        def gapFunderInstance = GapFunder.get(id)
        if (!gapFunderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'gapFunder.label', default: 'GapFunder'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (gapFunderInstance.version > version) {
                gapFunderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'gapFunder.label', default: 'GapFunder')] as Object[],
                          "Another user has updated this GapFunder while you were editing")
                render(view: "edit", model: [gapFunderInstance: gapFunderInstance])
                return
            }
        }

        gapFunderInstance.properties = params

        if (!gapFunderInstance.save(flush: true)) {
            render(view: "edit", model: [gapFunderInstance: gapFunderInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'gapFunder.label', default: 'GapFunder'), gapFunderInstance.id])
        redirect(action: "show", id: gapFunderInstance.id)
    }

    def delete(Long id) {
        def gapFunderInstance = GapFunder.get(id)
        if (!gapFunderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'gapFunder.label', default: 'GapFunder'), id])
            redirect(action: "list")
            return
        }

        try {
            gapFunderInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'gapFunder.label', default: 'GapFunder'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'gapFunder.label', default: 'GapFunder'), id])
            redirect(action: "show", id: id)
        }
    }
}
