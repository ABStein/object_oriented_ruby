# employee_1 = ["Jimmy", "Stewart", 70000, true]
# employee_2 = ["Susan", "Messing", 80000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."
# puts "#{employee_2[0]} #{employee_2[1]} makes #{employee_2[2]} a year."

# employee_1 = {:first_name => "Jimmy", :last_name => "Stewart", :salary => 70000, :active => true}
# employee_2 = {first_name: "Susan", last_name: "Messing", salary: 80000, active: true}

# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year."
# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year."

class Employee
  attr_reader :first_name, :last_name, :active 
  attr_writer :first_name, :last_name, :active 

  def initialize(input_options) #initialize calls a new intance 
    @first_name = input_options[:first_name] #these are all parameters, @ is an instance variable
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  # def first_name
  #   @first_name #reader method (helps us read an attribute.)
  # end

  # def last_name
  #   @last_name
  # end

  # def active
  #   @active
  # end

  # def active=(new_active)#the writer method, it will rewrite a current reading mething)
  #   @active = new_active
  # end

  def print_info
    puts "#{first_name} #{last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end

employee_1 = Employee.new(
  first_name: "Jimmy",
  last_name: "Stewart",
  salary: 70000, 
  active: true
  )#ruby allows us to not have to put curly brackets in the parentheses.
employee_2 = Employee.new(
  first_name: "Susan",
  last_name: "Messing",
  salary: 80000,
  active: true
     )
# employee_1.print_info
# employee_2.print_info
# employee_2.give_annual_raise
# employee_2.print_info

p employee_1.first_name

class Manager < Employee
  def initialize(input_options) #initialize calls a new intance 
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    puts "Email sent."
  end
end


manager = Manager.new(
  first_name: "John"
  last_name: "Nelson"
  salary: 100000
  active: true
  employees: [employee_1, employee_2]
)

p 




