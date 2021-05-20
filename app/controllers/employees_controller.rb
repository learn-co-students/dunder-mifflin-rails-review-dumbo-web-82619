class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(params.require(:employee).permit!)
        if @employee.valid?
            redirect_to employee_path(@employee)
        else
            flash[:errors] = @employee.errors.full_messages
            redirect_to new_employee_path
        end

    end

    def show
        @employee = Employee.find(params[:id])
    end

    def edit
    end

    def update
    end
    
end
