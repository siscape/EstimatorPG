package com.siscape.estimator

import org.springframework.dao.DataIntegrityViolationException

class HardMoneyLoanController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [hardMoneyLoanInstanceList: HardMoneyLoan.list(params), hardMoneyLoanInstanceTotal: HardMoneyLoan.count()]
    }

    def create() {
        [hardMoneyLoanInstance: new HardMoneyLoan(params)]
    }

    def save() {
        def hardMoneyLoanInstance = new HardMoneyLoan(params)
        if (!hardMoneyLoanInstance.save(flush: true)) {
            render(view: "create", model: [hardMoneyLoanInstance: hardMoneyLoanInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'hardMoneyLoan.label', default: 'HardMoneyLoan'), hardMoneyLoanInstance.id])
        redirect(action: "show", id: hardMoneyLoanInstance.id)
    }

    def show(Long id) {
        def hardMoneyLoanInstance = HardMoneyLoan.get(id)
        if (!hardMoneyLoanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hardMoneyLoan.label', default: 'HardMoneyLoan'), id])
            redirect(action: "list")
            return
        }

        [hardMoneyLoanInstance: hardMoneyLoanInstance]
    }

    def edit(Long id) {
        def hardMoneyLoanInstance = HardMoneyLoan.get(id)
        if (!hardMoneyLoanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hardMoneyLoan.label', default: 'HardMoneyLoan'), id])
            redirect(action: "list")
            return
        }

        [hardMoneyLoanInstance: hardMoneyLoanInstance]
    }

    def update(Long id, Long version) {
        def hardMoneyLoanInstance = HardMoneyLoan.get(id)
        if (!hardMoneyLoanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hardMoneyLoan.label', default: 'HardMoneyLoan'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (hardMoneyLoanInstance.version > version) {
                hardMoneyLoanInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'hardMoneyLoan.label', default: 'HardMoneyLoan')] as Object[],
                          "Another user has updated this HardMoneyLoan while you were editing")
                render(view: "edit", model: [hardMoneyLoanInstance: hardMoneyLoanInstance])
                return
            }
        }

        hardMoneyLoanInstance.properties = params

        if (!hardMoneyLoanInstance.save(flush: true)) {
            render(view: "edit", model: [hardMoneyLoanInstance: hardMoneyLoanInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'hardMoneyLoan.label', default: 'HardMoneyLoan'), hardMoneyLoanInstance.id])
        redirect(action: "show", id: hardMoneyLoanInstance.id)
    }

    def delete(Long id) {
        def hardMoneyLoanInstance = HardMoneyLoan.get(id)
        if (!hardMoneyLoanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hardMoneyLoan.label', default: 'HardMoneyLoan'), id])
            redirect(action: "list")
            return
        }

        try {
            hardMoneyLoanInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'hardMoneyLoan.label', default: 'HardMoneyLoan'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'hardMoneyLoan.label', default: 'HardMoneyLoan'), id])
            redirect(action: "show", id: id)
        }
    }
}
