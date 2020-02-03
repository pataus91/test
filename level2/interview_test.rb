def parser(lines)
  lines.each do |line|
    name, employee_id, office = line.split(',')
    puts "employee_id: #{employee_id}"
    puts "office: #{office}"

    last_name, first_name = name.split
    puts "last_name: #{last_name}"
    puts "first_name: #{first_name}"
  end
end

raw_lines = File.new('interview_users.csv').readlines

parser(raw_lines)
