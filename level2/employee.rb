# Model of employee

class Employee
  attr_reader :office, :first_name, :last_name
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @office = attributes[:office]
    @name = attributes[:name]
    @first_name = create_first_name(@name)
    @last_name = create_last_name(@name)
  end

  # Create last name of employee from last name
  def create_last_name(name)
    name.split[0]
  end

  # Create first name of employee from full name
  def create_first_name(name)
    name.split[1]
  end
end
