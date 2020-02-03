require_relative 'employee_repository.rb'
require_relative 'employees_controller.rb'

csv = 'interview_users.csv'
repository = EmployeeRepository.new(csv)
controller = EmployeesController.new(repository)
controller.list
