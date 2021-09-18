package com.bridgelabz


class EmployeeController {

    EmployeeService employeeService

    def index() {
        def response = employeeService.list(params)
        [employeeList: response.list, total:response.count]
    }

    def getById() {
        render employeeService.getById(1)

    }
    def create(){
        [employee: flash.redirectParams]
    }
    def save() {

//        def response =
        employeeService.save(params)
//        if (!response.isSuccess) {
//            flash.redirectParams = response.model
//            redirect(controller: "employee", action: "create")
//        }else{
            redirect(controller: "employee", action: "index")
//        }
//        render 'success'
    }
    def edit(Integer id) {
        if (flash.redirectParams) {
            [employee: flash.redirectParams]
        } else {
            def response = employeeService.getById(id)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
                redirect(controller: "employee", action: "index")
            } else {
                [employee: response]
            }
        }
    }
    def update() {
        def response = employeeService.getById(params.id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
            redirect(controller: "employee", action: "index")
        }else{
            response = employeeService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "unable.to.update"), false)
                redirect(controller: "employee", action: "edit")
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "updated"))
                redirect(controller: "employee", action: "index")
            }
        }
    }
    def delete(Integer id) {
        Employee employee = employeeService.getById(id)

//        employee.delete(flush: true)
        employeeService.deleteEmp(employee)
//        render 'employee deleted'
//        if (!response){
//            flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
//            redirect(controller: "employee", action: "index")
//        }else{
//            response =
//            employeeService.deleteEmp(employee)
//            if (!response){
//                flash.message = AppUtil.infoMessage(g.message(code: "unable.to.delete"), false)
//            }else{
//                flash.message = AppUtil.infoMessage(g.message(code: "deleted"))
//            }
            redirect(controller: "employee", action: "index")
//        }
    }
}
