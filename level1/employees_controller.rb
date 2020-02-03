require_relative 'employees_view'
require_relative 'employee_repository'

class EmployeesController
  def initialize(repository)
    @repository = repository
    @view = EmployeesView.new
  end

  def list
    employees = @repository.all
    @view.display(employees)
  end
end
