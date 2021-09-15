package com.bridgelabz

import java.time.LocalDate

class Employee {
    Long id
    String name
    String gender
    String profile
    LocalDate startDate
    Long salary
    String department
    String note
    static constraints = {
        id blank: false, unique: true
        name blank: false
        gender blank: false
        profile blank: true
        department blank: false
        salary blank: false
        startDate blank: false
        note blank: true
    }
    static mapping = {
        table "employee"
    }
    String toString() {
        return name
    }
}
