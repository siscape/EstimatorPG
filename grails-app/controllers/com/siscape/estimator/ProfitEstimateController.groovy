package com.siscape.estimator

import org.springframework.dao.DataIntegrityViolationException

class ProfitEstimateController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [profitEstimateInstanceList: ProfitEstimate.list(params), profitEstimateInstanceTotal: ProfitEstimate.count()]
    }

    def create() {
        [profitEstimateInstance: new ProfitEstimate(params)]
    }

    def save() {
        def profitEstimateInstance = new ProfitEstimate(params)
        if (!profitEstimateInstance.save(flush: true)) {
            render(view: "create", model: [profitEstimateInstance: profitEstimateInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'profitEstimate.label', default: 'ProfitEstimate'), profitEstimateInstance.id])
        redirect(action: "show", id: profitEstimateInstance.id)
    }

    def show(Long id) {
        def profitEstimateInstance = ProfitEstimate.get(id)
        if (!profitEstimateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profitEstimate.label', default: 'ProfitEstimate'), id])
            redirect(action: "list")
            return
        }

        [profitEstimateInstance: profitEstimateInstance]
    }

    def edit(Long id) {
        def profitEstimateInstance = ProfitEstimate.get(id)
        if (!profitEstimateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profitEstimate.label', default: 'ProfitEstimate'), id])
            redirect(action: "list")
            return
        }

        [profitEstimateInstance: profitEstimateInstance]
    }

    def update(Long id, Long version) {
        def profitEstimateInstance = ProfitEstimate.get(id)
        if (!profitEstimateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profitEstimate.label', default: 'ProfitEstimate'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (profitEstimateInstance.version > version) {
                profitEstimateInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'profitEstimate.label', default: 'ProfitEstimate')] as Object[],
                          "Another user has updated this ProfitEstimate while you were editing")
                render(view: "edit", model: [profitEstimateInstance: profitEstimateInstance])
                return
            }
        }

        profitEstimateInstance.properties = params

        if (!profitEstimateInstance.save(flush: true)) {
            render(view: "edit", model: [profitEstimateInstance: profitEstimateInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'profitEstimate.label', default: 'ProfitEstimate'), profitEstimateInstance.id])
        redirect(action: "show", id: profitEstimateInstance.id)
    }

    def delete(Long id) {
        def profitEstimateInstance = ProfitEstimate.get(id)
        if (!profitEstimateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profitEstimate.label', default: 'ProfitEstimate'), id])
            redirect(action: "list")
            return
        }

        try {
            profitEstimateInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'profitEstimate.label', default: 'ProfitEstimate'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'profitEstimate.label', default: 'ProfitEstimate'), id])
            redirect(action: "show", id: id)
        }
    }
}
