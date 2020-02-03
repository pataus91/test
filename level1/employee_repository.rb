require 'csv'
require_relative 'employee'

class EmployeeRepository
  def initialize(csv)
    @csv = csv
    @employees = []
    load_csv
  end

  def all
    @employees
  end

  private

  def add_headers(csv)
    headers = ['name', 'id', 'office']

    # Verify if headears are present or not
    if CSV.open(csv, 'r') { |csv| csv.first } != headers

      # If no headers, add the headers to the CSV
      CSV.open(csv + '.tmp', 'w', write_headers: true, headers: ['name', 'id', 'office']) do |dest|
        CSV.open(csv) do |source|
          source.each do |row|
            dest << row
          end
        end
      end
      File.rename(csv + '.tmp', csv)
    end
  end

  def load_csv
    add_headers(@csv)
    csv_options = { headers: :first_row, header_converters: :symbol }

    CSV.foreach(@csv, csv_options) do |row|
      @employees << Employee.new(row)
    end
  end
end
