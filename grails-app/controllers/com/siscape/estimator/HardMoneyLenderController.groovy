package com.siscape.estimator

import org.springframework.dao.DataIntegrityViolationException

class HardMoneyLenderController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [hardMoneyLenderInstanceList: HardMoneyLender.list(params), hardMoneyLenderInstanceTotal: HardMoneyLender.count()]
    }

    def create() {
        [hardMoneyLenderInstance: new HardMoneyLender(params)]
    }

    def save() {
        def hardMoneyLenderInstance = new HardMoneyLender(params)
        if (!hardMoneyLenderInstance.save(flush: true)) {
            render(view: "create", model: [hardMoneyLenderInstance: hardMoneyLenderInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'hardMoneyLender.label', default: 'HardMoneyLender'), hardMoneyLenderInstance.id])
        redirect(action: "show", id: hardMoneyLenderInstance.id)
    }

    def show(Long id) {
        def hardMoneyLenderInstance = HardMoneyLender.get(id)
        if (!hardMoneyLenderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hardMoneyLender.label', default: 'HardMoneyLender'), id])
            redirect(action: "list")
            return
        }

        [hardMoneyLenderInstance: hardMoneyLenderInstance]
    }

    def edit(Long id) {
        def hardMoneyLenderInstance = HardMoneyLender.get(id)
        if (!hardMoneyLenderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hardMoneyLender.label', default: 'HardMoneyLender'), id])
            redirect(action: "list")
            return
        }

        [hardMoneyLenderInstance: hardMoneyLenderInstance]
    }

    def update(Long id, Long version) {
        def hardMoneyLenderInstance = HardMoneyLender.get(id)
        if (!hardMoneyLenderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hardMoneyLender.label', default: 'HardMoneyLender'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (hardMoneyLenderInstance.version > version) {
                hardMoneyLenderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'hardMoneyLender.label', default: 'HardMoneyLender')] as Object[],
                          "Another user has updated this HardMoneyLender while you were editing")
                render(view: "edit", model: [hardMoneyLenderInstance: hardMoneyLenderInstance])
                return
            }
        }

        hardMoneyLenderInstance.properties = params

        if (!hardMoneyLenderInstance.save(flush: true)) {
            render(view: "edit", model: [hardMoneyLenderInstance: hardMoneyLenderInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'hardMoneyLender.label', default: 'HardMoneyLender'), hardMoneyLenderInstance.id])
        redirect(action: "show", id: hardMoneyLenderInstance.id)
    }

    def delete(Long id) {
        def hardMoneyLenderInstance = HardMoneyLender.get(id)
        if (!hardMoneyLenderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hardMoneyLender.label', default: 'HardMoneyLender'), id])
            redirect(action: "list")
            return
        }

        try {
            hardMoneyLenderInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'hardMoneyLender.label', default: 'HardMoneyLender'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'hardMoneyLender.label', default: 'HardMoneyLender'), id])
            redirect(action: "show", id: id)
        }
    }
}
