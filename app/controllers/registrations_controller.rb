class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new params[:registration]

    if @registration.save
      redirect_to registration_path(@registration)
    else
      render :action => :new
    end
  end

  def update
    @registration = Registration.find(params[:id])
    @registration.attributes = params[:registration]

    if @registration.save
      redirect_to registration_path(@registration)
    else
      render :action => :show
    end
  end

  def show
    @registration = Registration.find(params[:id])
  end
end