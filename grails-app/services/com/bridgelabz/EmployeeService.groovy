package com.bridgelabz

import grails.gorm.transactions.Transactional

@Transactional
class EmployeeService {

    EmployeeModel employeeModel

    def getAll() {
        return employeeModel.list()
    }
}
