class EmployeesController < ApplicationController
  def index
    employees = Employee.all
    render json: employees.as_json
  end

  def show
    employee = Employee.find_by(id: params[:id])
    render json: employee.as_json
  end

  def create
    employee = Employee.new(
      first_name: "Kelly",
      last_name: "Kapoor",
      email: "kkapoor@dm.com",
      phone_number: "555-1234",
      job_title: "Customer Service",
      department_id: 3
    )
    employee.save
    render json: employee.as_json
  end
end
