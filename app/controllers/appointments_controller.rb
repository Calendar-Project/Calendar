class AppointmentsController < ApplicationController
  def index
     @appointments = Appointment.all
   end

def show
   @appointment = Appointment.find(params[:id])
 end
  def new
  end
  def create
    @appointment = Appointment.new(params.require(:appointment).permit(:title, :text, :start_date, :start_time, :end_time, :end_date))
    if @appointment.save
      redirect_to @appointment
    else
      render 'new'
    end
  end
  private
  def appointment_params
    params.require(:appointment).permit(:title, :text, :start_date, :start_time, :end_time, :end_date)
  end
end
