# frozen_string_literal: true

class EmployeesController < ApplicationController
  def index
    @employees = Employee.order(:name)
  end

  def show
    @employee = Employee.find(params[:id])
  end
end
