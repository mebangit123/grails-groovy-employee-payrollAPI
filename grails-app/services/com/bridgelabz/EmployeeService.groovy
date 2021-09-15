package com.bridgelabz

import grails.gorm.transactions.Transactional

@Transactional
class EmployeeService {

    Employee employee

    def getAll() {
        return employee.findAll()
    }
}
