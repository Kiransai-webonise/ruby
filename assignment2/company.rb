require 'csv'

module Designation
    def self.included(klass)
        klass.extend(ClassMethods)
    end

    module ClassMethods
        def find_experience(experience)
            if (experience > 5)
                puts "Enployee Designation: Team Lead"
            else
                puts "Employee Designation: Developer"
            end
        end
    end

    def find_experience_obj(experience)
        if (experience > 5)
            puts "Enployee Designation: Team Lead"
        else
            puts "Employee Designation: Developer"
        end
    end
end

class Company
    include Designation
    def initialize(id, name, addr, experience, salary, stack)
        @emp_id = id
        @emp_name = name
        @emp_addr = addr
        @emp_exp = experience
        @emp_salary = salary
        @emp_stack = stack
    end

    def emp_details 
        puts "Employee Name: #{@emp_name}"
        puts "Employee Address: #{@emp_addr}"
        puts "Employee experience: #{@emp_exp}"
        puts "Employee Salary: #{@emp_salary}"
        puts "Employee stack: #{division(@emp_stack)}"
    end

    private

    def division emp_stack
        division = {'web development': 'ruby', 'mobile development': 'android'}

        division.each { |k, v|
            if (v == emp_stack)
                return k
            end
        }
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
                emp_hash << temp_arr
            end
        end
        return emp_hash
    end

    private

    def self.get_experience(experience)
        date1 = DateTime.now()
        date2 = Date.parse(experience)

        return date1.year - date2.year
    end
end

emp_data = Getemployees.read_emp_details[0]

company_details = Company.new(emp_data['id'], emp_data['name'], emp_data['email'], emp_data['experience'], emp_data['salary'], emp_data['stack'])

company_details.emp_details

company_details.find_experience_obj(5)

Company.find_experience(5)