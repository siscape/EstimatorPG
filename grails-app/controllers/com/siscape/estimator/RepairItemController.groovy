package com.siscape.estimator

import org.springframework.dao.DataIntegrityViolationException

class RepairItemController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [repairItemInstanceList: RepairItem.list(params), repairItemInstanceTotal: RepairItem.count()]
    }

    def create() {
        [repairItemInstance: new RepairItem(params)]
    }

    def save() {
        def repairItemInstance = new RepairItem(params)
        if (!repairItemInstance.save(flush: true)) {
            render(view: "create", model: [repairItemInstance: repairItemInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'repairItem.label', default: 'RepairItem'), repairItemInstance.id])
        redirect(action: "show", id: repairItemInstance.id)
    }

    def show(Long id) {
        def repairItemInstance = RepairItem.get(id)
        if (!repairItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'repairItem.label', default: 'RepairItem'), id])
            redirect(action: "list")
            return
        }

        [repairItemInstance: repairItemInstance]
    }

    def edit(Long id) {
        def repairItemInstance = RepairItem.get(id)
        if (!repairItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'repairItem.label', default: 'RepairItem'), id])
            redirect(action: "list")
            return
        }

        [repairItemInstance: repairItemInstance]
    }

    def update(Long id, Long version) {
        def repairItemInstance = RepairItem.get(id)
        if (!repairItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'repairItem.label', default: 'RepairItem'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (repairItemInstance.version > version) {
                repairItemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'repairItem.label', default: 'RepairItem')] as Object[],
                        "Another user has updated this RepairItem while you were editing")
                render(view: "edit", model: [repairItemInstance: repairItemInstance])
                return
            }
        }

        repairItemInstance.properties = params

        if (!repairItemInstance.save(flush: true)) {
            render(view: "edit", model: [repairItemInstance: repairItemInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'repairItem.label', default: 'RepairItem'), repairItemInstance.id])
        redirect(action: "show", id: repairItemInstance.id)
    }

    def delete(Long id) {
        def repairItemInstance = RepairItem.get(id)
        if (!repairItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'repairItem.label', default: 'RepairItem'), id])
            redirect(action: "list")
            return
        }

        try {
            repairItemInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'repairItem.label', default: 'RepairItem'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'repairItem.label', default: 'RepairItem'), id])
            redirect(action: "show", id: id)
        }
    }
}
