package com.bridgelabz

import grails.rest.Resource
import org.springframework.scheduling.quartz.LocalDataSourceJobStore

import java.time.LocalDate
@Resource(uri = "/api")
class EmployeeModel {
    Long id
    String name
    Integer age
    LocalDate joined
    Long salary
    static constraints = {
        id blank: false, unique: true
        name blank: false
        age blank: false
        joined blank: false
        salary blank: false
    }
    static mapping = {
        table "employee"
    }
    String toString() {
        return name
    }
}
