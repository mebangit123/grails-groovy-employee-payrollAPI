package com.bridgelabz

import grails.web.servlet.mvc.GrailsParameterMap

class EmployeeService {

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Employee> listOfEmployees = Employee.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: listOfEmployees, count: listOfEmployees.totalCount]
    }

    def save(GrailsParameterMap params) {
        Employee employee = new Employee(params)
        def response = AppUtil.saveResponse(false, employee)
        if (employee.validate()) {
            employee.save(flush: true)
            if (!employee.hasErrors()) {
                response.isSuccess = true
            }
        }
        return response
    }
    def update(Employee employee, GrailsParameterMap params) {
        employee.properties = params
        def response = AppUtil.saveResponse(false, employee)
        if (employee.validate()) {
            employee.save(flush: true)
            if (!employee.hasErrors()) {
                response.isSuccess = true
            }
        }
        return response
    }
    def getById(Serializable id) {
        return Employee.get(id)
    }
    def deleteEmp(Employee employee) {
        try {
            employee.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}
