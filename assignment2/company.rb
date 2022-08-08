require 'csv'
require './employee.rb'

module Designation
    def self.included(klass)
        klass.extend(ClassMethods)
    end

    module ClassMethods
        def find_experience(experience)
            if (experience > 5)
                puts "Enployee Role: Team Lead"
            else
                puts "Employee Role: Developer"
            end
        end
    end

    def find_experience_obj(experience)
        if (experience > 5)
            puts "Enployee Role: Team Lead"
        else
            puts "Employee Role: Developer"
        end
    end
end

class Company
    include Designation
    def initialize(employee)
        @employee = employee
    end

    def emp_details 
        puts "Employee Name: #{@employee.name}"
        puts "Employee email: #{@employee.email}"
        puts "Employee experience: #{@employee.emp_experience} years and #{@employee.get_designation}"
        puts "Employee Salary: #{@employee.salary}"
        puts "Employee stack: #{division(@employee.stack)}"
    end

    private

    def division emp_stack
        emp_division = {web_development: 'ruby', mobile_development: 'android'}
        emp_division.key(emp_stack)
    end
end

class Getemployees  
    def self.read_emp_details
        emp_list = [];
        CSV.foreach("employees.csv") do |row|
            if (row[1] != "FIRST_NAME")
                temp_arr = {}
                temp_arr['id'] = row[0]
                temp_arr['name'] = row[1]
                temp_arr['email'] = row[3]
                temp_arr['experience'] = get_experience(row[5])
                temp_arr['salary'] = row[7]
                temp_arr['stack'] = 'ruby'
                if temp_arr['experience'] > 5
                    emp = SeniorSD.new(temp_arr)
                else
                    emp = JuniorSD.new(temp_arr)
                end
                emp_list << emp
            end
        end
        emp_list
    end

    private

    def self.get_experience(experience)
        date1 = DateTime.now()
        date2 = Date.parse(experience)

        date1.year - date2.year
    end
end

company_details = Company.new(Getemployees.read_emp_details[0])

company_details.emp_details

company_details.find_experience_obj(5)

Company.find_experience(5)
