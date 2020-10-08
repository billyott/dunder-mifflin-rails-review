class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update, :destroy]

    def show
    end

    def index
        @employees = Employee.all
    end

    def edit

    end

    def update
        byebug
        @employee.update(employee_params)
        redirect_to employee_path(@employee)

    end

    private

    def find_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :title, :alias, :office, :dog, :img_url)
    end

end
