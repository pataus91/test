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

  def list_cities
    cities = @repository.num_employees_city
    @view.display_stuff(cities.keys)
    @view.display_stuff(cities.values)
  end
end
