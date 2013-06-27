package com.siscape.estimator

import org.springframework.dao.DataIntegrityViolationException

class RepairEstimateController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [repairEstimateInstanceList: RepairEstimate.list(params), repairEstimateInstanceTotal: RepairEstimate.count()]
    }

    def create() {
        [repairEstimateInstance: new RepairEstimate(params)]
    }

    def save() {
        def repairEstimateInstance = new RepairEstimate(params)
        if (!repairEstimateInstance.save(flush: true)) {
            render(view: "create", model: [repairEstimateInstance: repairEstimateInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'repairEstimate.label', default: 'RepairEstimate'), repairEstimateInstance.id])
        redirect(action: "show", id: repairEstimateInstance.id)
    }

    def show(Long id) {
        def repairEstimateInstance = RepairEstimate.get(id)
        if (!repairEstimateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'repairEstimate.label', default: 'RepairEstimate'), id])
            redirect(action: "list")
            return
        }

        [repairEstimateInstance: repairEstimateInstance]
    }

    def edit(Long id) {
        def repairEstimateInstance = RepairEstimate.get(id)
        if (!repairEstimateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'repairEstimate.label', default: 'RepairEstimate'), id])
            redirect(action: "list")
            return
        }

        [repairEstimateInstance: repairEstimateInstance]
    }

    def update(Long id, Long version) {
        def repairEstimateInstance = RepairEstimate.get(id)
        if (!repairEstimateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'repairEstimate.label', default: 'RepairEstimate'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (repairEstimateInstance.version > version) {
                repairEstimateInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'repairEstimate.label', default: 'RepairEstimate')] as Object[],
                          "Another user has updated this RepairEstimate while you were editing")
                render(view: "edit", model: [repairEstimateInstance: repairEstimateInstance])
                return
            }
        }

        repairEstimateInstance.properties = params

        if (!repairEstimateInstance.save(flush: true)) {
            render(view: "edit", model: [repairEstimateInstance: repairEstimateInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'repairEstimate.label', default: 'RepairEstimate'), repairEstimateInstance.id])
        redirect(action: "show", id: repairEstimateInstance.id)
    }

    def delete(Long id) {
        def repairEstimateInstance = RepairEstimate.get(id)
        if (!repairEstimateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'repairEstimate.label', default: 'RepairEstimate'), id])
            redirect(action: "list")
            return
        }

        try {
            repairEstimateInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'repairEstimate.label', default: 'RepairEstimate'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'repairEstimate.label', default: 'RepairEstimate'), id])
            redirect(action: "show", id: id)
        }
    }
}
