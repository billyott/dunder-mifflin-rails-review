class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update, :destroy]

    def show
    end

    def index
        @employees = Employee.all
    end

    private

    def find_employee
        @employee = Employee.find(params[:id])
    end

end
