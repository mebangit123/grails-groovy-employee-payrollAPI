package com.bridgelabz

import java.time.LocalDate

class Employee {
    Long id
    String name
    String gender
    String profile
    Date startDate
    Long salary
    List<String> department = ['HR','Sales','Finance','Engineer','Others']
    String note
    static constraints = {
        id blank: false, unique: true
        name blank: true
        gender blank: true
        profile blank: true
        department blank: true
        salary blank: true
        startDate blank: true
        note blank: true
    }
    static mapping = {
        table "employee"
    }
    String toString() {
        return name+" "+department
    }
}
