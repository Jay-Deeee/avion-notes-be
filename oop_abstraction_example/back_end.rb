require_relative 'employee.rb'
require_relative 'dev_schedule.rb'

class BackEnd < EmployeeTwo
  include DevScheduler
end

be = BackEnd.new("Glenn", "BackEnd Engineer", 150000)
puts be.e_name
puts be.e_position
puts be.e_salary
puts be.schedule
