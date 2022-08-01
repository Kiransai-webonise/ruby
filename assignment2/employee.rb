class Employee
    def initialize(emp_experience)
        @emp_experience = emp_experience
    end

    def designation
        "Designation for #{@emp_experience} years is"
    end
end

class JuniorSD < Employee
    def designation
        "#{super} Junior Software Developer"
    end
end

class SeniorSD < Employee
    def designation
        "#{super} Senior Software Developer"
    end
end