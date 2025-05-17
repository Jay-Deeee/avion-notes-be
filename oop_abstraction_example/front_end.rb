require_relative 'employee.rb'
require_relative 'dev_schedule.rb'

class FrontEnd < EmployeeTwo
  include DevScheduler # this is how to call a mix-in
end

fe = FrontEnd.new("Allan", "FrontEnd Engineer", 100000)
puts fe.e_name
puts fe.e_position
puts fe.e_salary
puts fe.schedule
