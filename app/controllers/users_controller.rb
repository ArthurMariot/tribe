class UsersController < ApplicationController
    def index
    @employees = User.all
  end

  def show
    @employee = User.find(params[:id])
  end
end
