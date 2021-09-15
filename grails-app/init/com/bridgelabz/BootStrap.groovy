package com.bridgelabz

class BootStrap {

    def init = { servletContext ->
        EmployeeModel employee = new EmployeeModel(id: 1, name: "Meban", gender: "Male", department: "Engineer", salary: 14994, startDate: "2020-12-12" )

        employee.save()
    }
    def destroy = {
    }
}
