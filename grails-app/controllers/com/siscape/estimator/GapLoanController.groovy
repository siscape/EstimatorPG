package com.siscape.estimator

import org.springframework.dao.DataIntegrityViolationException

class GapLoanController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [gapLoanInstanceList: GapLoan.list(params), gapLoanInstanceTotal: GapLoan.count()]
    }

    def create() {
        [gapLoanInstance: new GapLoan(params)]
    }

    def save() {
        def gapLoanInstance = new GapLoan(params)
        if (!gapLoanInstance.save(flush: true)) {
            render(view: "create", model: [gapLoanInstance: gapLoanInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'gapLoan.label', default: 'GapLoan'), gapLoanInstance.id])
        redirect(action: "show", id: gapLoanInstance.id)
    }

    def show(Long id) {
        def gapLoanInstance = GapLoan.get(id)
        if (!gapLoanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'gapLoan.label', default: 'GapLoan'), id])
            redirect(action: "list")
            return
        }

        [gapLoanInstance: gapLoanInstance]
    }

    def edit(Long id) {
        def gapLoanInstance = GapLoan.get(id)
        if (!gapLoanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'gapLoan.label', default: 'GapLoan'), id])
            redirect(action: "list")
            return
        }

        [gapLoanInstance: gapLoanInstance]
    }

    def update(Long id, Long version) {
        def gapLoanInstance = GapLoan.get(id)
        if (!gapLoanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'gapLoan.label', default: 'GapLoan'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (gapLoanInstance.version > version) {
                gapLoanInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'gapLoan.label', default: 'GapLoan')] as Object[],
                          "Another user has updated this GapLoan while you were editing")
                render(view: "edit", model: [gapLoanInstance: gapLoanInstance])
                return
            }
        }

        gapLoanInstance.properties = params

        if (!gapLoanInstance.save(flush: true)) {
            render(view: "edit", model: [gapLoanInstance: gapLoanInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'gapLoan.label', default: 'GapLoan'), gapLoanInstance.id])
        redirect(action: "show", id: gapLoanInstance.id)
    }

    def delete(Long id) {
        def gapLoanInstance = GapLoan.get(id)
        if (!gapLoanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'gapLoan.label', default: 'GapLoan'), id])
            redirect(action: "list")
            return
        }

        try {
            gapLoanInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'gapLoan.label', default: 'GapLoan'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'gapLoan.label', default: 'GapLoan'), id])
            redirect(action: "show", id: id)
        }
    }
}
