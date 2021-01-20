=begin

Write a function that takes a list of employees at a company that includes
a person's name, title, and manager and prints out an org chart as a tab
indented list, in the following format:

Manager name (Title)
    Employee name (Title)

Example output:

Enrique (CEO)
    Connor (Engineer)
    Ben (Engineer)
    Emily (Designer)
Lisa (COO)
    Dan (Sales Manager)
        Hannah (Sales)
        Justin (Sales)
    Lauren (Customer Success)

=end

test_input = [
  { name: 'Enrique', manager: nil, title: 'CEO' },
  { name: 'Connor', manager: 'Enrique', title: 'Engineer' },
  { name: 'Daniel', manager: 'Connor', title: 'Engineer' },
  { name: 'Ben', manager: 'Enrique', title: 'Engineer' },
  { name: 'Emily', manager: 'Enrique', title: 'Designer' },
  { name: 'Lisa', manager: nil, title: 'COO' },
  { name: 'Dan', manager: 'Lisa', title: 'Sales Manager' },
  { name: 'Hannah', manager: 'Dan', title: 'Sales' },
  { name: 'Justin', manager: 'Dan', title: 'Sales' },
  { name: 'Julian', manager: 'Justin', title: 'Sales Intern' },
  { name: 'David', manager: 'Dan', title: 'Sales' },
  { name: 'Lauren', manager: 'Lisa', title: 'Customer Success' },
];

# DD notes:
# Need to read test_input
# Store it a data set some extra details
# Assign reporters to employees
# Use memoization to avoid n*2 (nested loops)
# =>  Process the employee list
# Output the result / formatting
# Increase tab for nested levels
# =>  Must use recursion to increase levels (tab string) and format properly

# Perhaps use Struct
class Company
  attr_accessor :employees, :data

  def initialize(data)
    @data = data
    @employees = []
    process_data
  end

  def process_data
    employee_memo = {}

    data.each do |attrs|
      employee = Employee.new(attrs)
      employees << employee

      # Create memo of employee instances
      employee_memo[employee.name] = employee
    end

    # Hash lookup for employee
    employees.each do |emp|
      next unless emp.manager
      manager = employee_memo[emp.manager]
      # Add employee to their manager's reports
      manager.reports << emp
    end
  end

  def print_structure
    employees.each do |employee|
      next if employee.manager

      employee.print_role_structure
    end
  end
end

class Employee
  attr_accessor :name, :manager, :title, :reports

  def initialize(name:, manager:, title:)
    @name = name
    @title = title
    @manager = manager
    @reports = []
  end

  def print_role_structure(level = 0, prefix = '  ')
    puts "#{prefix * level}#{self}"

    level += 1
    reports.each do |rp|
      rp.print_role_structure(level)
    end
  end

  def to_s
    "#{name} (#{title})"
  end
end

company = Company.new(test_input)
company.print_structure

