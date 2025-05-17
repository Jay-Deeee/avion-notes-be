require_relative 'employee.rb'
require_relative 'sg_schedule.rb'

class SecurityGuard < EmployeeTwo
  include SGScheduler
end

sg = SecurityGuard.new("Justine", "Security Guard", 50000)
puts sg.e_name
puts sg.e_position
puts sg.e_salary
puts sg.schedule
