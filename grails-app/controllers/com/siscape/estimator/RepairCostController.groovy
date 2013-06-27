package com.siscape.estimator

import org.springframework.dao.DataIntegrityViolationException

class RepairCostController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [repairCostInstanceList: RepairCost.list(params), repairCostInstanceTotal: RepairCost.count()]
    }

    def create() {
        [repairCostInstance: new RepairCost(params)]
    }

    def save() {
        def repairCostInstance = new RepairCost(params)
        if (!repairCostInstance.save(flush: true)) {
            render(view: "create", model: [repairCostInstance: repairCostInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'repairCost.label', default: 'RepairCost'), repairCostInstance.id])
        redirect(action: "show", id: repairCostInstance.id)
    }

    def show(Long id) {
        def repairCostInstance = RepairCost.get(id)
        if (!repairCostInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'repairCost.label', default: 'RepairCost'), id])
            redirect(action: "list")
            return
        }

        [repairCostInstance: repairCostInstance]
    }

    def edit(Long id) {
        def repairCostInstance = RepairCost.get(id)
        if (!repairCostInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'repairCost.label', default: 'RepairCost'), id])
            redirect(action: "list")
            return
        }

        [repairCostInstance: repairCostInstance]
    }

    def update(Long id, Long version) {
        def repairCostInstance = RepairCost.get(id)
        if (!repairCostInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'repairCost.label', default: 'RepairCost'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (repairCostInstance.version > version) {
                repairCostInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'repairCost.label', default: 'RepairCost')] as Object[],
                          "Another user has updated this RepairCost while you were editing")
                render(view: "edit", model: [repairCostInstance: repairCostInstance])
                return
            }
        }

        repairCostInstance.properties = params

        if (!repairCostInstance.save(flush: true)) {
            render(view: "edit", model: [repairCostInstance: repairCostInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'repairCost.label', default: 'RepairCost'), repairCostInstance.id])
        redirect(action: "show", id: repairCostInstance.id)
    }

    def delete(Long id) {
        def repairCostInstance = RepairCost.get(id)
        if (!repairCostInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'repairCost.label', default: 'RepairCost'), id])
            redirect(action: "list")
            return
        }

        try {
            repairCostInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'repairCost.label', default: 'RepairCost'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'repairCost.label', default: 'RepairCost'), id])
            redirect(action: "show", id: id)
        }
    }
}
