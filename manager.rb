require "./employee.rb"
require "./reportable.rb"

class Manager < Employee
  include Reportable

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def give_all_raises 
   @employees[0].give_annual_raise
   @employees[1].give_annual_raise
  end
end