class EmployeesController < ApplicationController
 def new
   @employee = User.new
 end
end
