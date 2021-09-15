package com.bridgelabz

//import javax.annotation.Resources
//
//@Resources(uri='/api', formats=['json', 'xml'])
class EmployeeController {

    EmployeeService employeeService

//    static allowedMethods = [create:["POST","DELETE"]]
    def all() {
        def employees = []
        employees << employeeService.getAll()
        [employees: employees]
    }

    def create() {
    }
}
