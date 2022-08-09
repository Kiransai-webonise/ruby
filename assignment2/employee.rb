class Employee
    attr_reader :name, :email, :emp_experience, :salary, :stack

    def initialize(emp_data)
        @name = emp_data['name']
        @email = emp_data['email']
        @emp_experience = emp_data['experience']
        @salary = emp_data['salary']
        @stack = emp_data['stack']
    end

    def get_designation
        "Designation for #{emp_experience} years is"
    end
end

class JuniorSD < Employee
    def get_designation
        "#{super} Junior Software Developer"
    end
end

class SeniorSD < Employee
    def get_designation
        "#{super} Senior Software Developer"
    end
end
