class EmployeesView
  def display(employees)
    employees.each do |employee|
      puts "Id: #{employee.id}. Office: #{employee.office} - First Name: #{employee.last_name}, Last Name: #{employee.first_name}"
    end
  end
end
