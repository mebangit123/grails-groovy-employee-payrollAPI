package com.bridgelabz

class BootStrap {

    def init = { servletContext ->
        Employee employee = new Employee(id: 1, name: "Meban", gender: "Male", department: "Engineer", salary: 14994, startDate: "2020-12-12" )

        employee.save()
    }
    def destroy = {
    }
}
