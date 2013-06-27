package com.siscape.estimator

import org.springframework.dao.DataIntegrityViolationException

class ParameterSetController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [parameterSetInstanceList: ParameterSet.list(params), parameterSetInstanceTotal: ParameterSet.count()]
    }

    def create() {
        [parameterSetInstance: new ParameterSet(params)]
    }

    def save() {
        def parameterSetInstance = new ParameterSet(params)
        if (!parameterSetInstance.save(flush: true)) {
            render(view: "create", model: [parameterSetInstance: parameterSetInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'parameterSet.label', default: 'ParameterSet'), parameterSetInstance.id])
        redirect(action: "show", id: parameterSetInstance.id)
    }

    def show(Long id) {
        def parameterSetInstance = ParameterSet.get(id)
        if (!parameterSetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'parameterSet.label', default: 'ParameterSet'), id])
            redirect(action: "list")
            return
        }

        [parameterSetInstance: parameterSetInstance]
    }

    def edit(Long id) {
        def parameterSetInstance = ParameterSet.get(id)
        if (!parameterSetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'parameterSet.label', default: 'ParameterSet'), id])
            redirect(action: "list")
            return
        }

        [parameterSetInstance: parameterSetInstance]
    }

    def update(Long id, Long version) {
        def parameterSetInstance = ParameterSet.get(id)
        if (!parameterSetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'parameterSet.label', default: 'ParameterSet'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (parameterSetInstance.version > version) {
                parameterSetInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'parameterSet.label', default: 'ParameterSet')] as Object[],
                        "Another user has updated this ParameterSet while you were editing")
                render(view: "edit", model: [parameterSetInstance: parameterSetInstance])
                return
            }
        }

        parameterSetInstance.properties = params

        if (!parameterSetInstance.save(flush: true)) {
            render(view: "edit", model: [parameterSetInstance: parameterSetInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'parameterSet.label', default: 'ParameterSet'), parameterSetInstance.id])
        redirect(action: "show", id: parameterSetInstance.id)
    }

    def delete(Long id) {
        def parameterSetInstance = ParameterSet.get(id)
        if (!parameterSetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'parameterSet.label', default: 'ParameterSet'), id])
            redirect(action: "list")
            return
        }

        try {
            parameterSetInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'parameterSet.label', default: 'ParameterSet'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'parameterSet.label', default: 'ParameterSet'), id])
            redirect(action: "show", id: id)
        }
    }
}
