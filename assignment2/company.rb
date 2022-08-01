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
    def initialize(emp_data)
        @emp_data = emp_data
    end

    def emp_details 
        puts "Employee Name: #{@emp_data['name']}"
        puts "Employee email: #{@emp_data['email']}"
        puts "Employee experience: #{@emp_data['experience']} years and #{@emp_data['designation']}"
        puts "Employee Salary: #{@emp_data['salary']}"
        puts "Employee stack: #{division(@emp_data['stack'])}"
    end

    private

    def division emp_stack
        division = {'web_development': 'ruby', 'mobile_development': 'android'}

        division.each do |k, v|
            if (v == emp_stack)
                return k
            end
        end
    end
end

class Getemployees  
    def self.read_emp_details
        emp_hash = [];
        CSV.foreach("employees.csv") do |row|
            if (row[1] != "FIRST_NAME")
                temp_arr = {}
                temp_arr['id'] = row[0]
                temp_arr['name'] = row[1]
                temp_arr['email'] = row[3]
                temp_arr['experience'] = get_experience(row[5])
                temp_arr['salary'] = row[7]
                temp_arr['stack'] = 'ruby'
                if temp_arr['experience'] > 2
                    emp = SeniorSD.new(temp_arr['experience'])
                else
                    emp = JuniorSD.new(temp_arr['experience'])
                end
                temp_arr['designation'] = emp.designation 
                emp_hash << temp_arr
            end
        end
        emp_hash
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
