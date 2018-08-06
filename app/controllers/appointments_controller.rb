class AppointmentsController < ApplicationController
  def index
     @appointments = Appointment.all
   end

   def show
     @appointment = Appointment.find(params[:id])
   end

  def new
  @appointment = Appointment.new
  end

  def edit
  @appointment = Appointment.find(params[:id])
<<<<<<< HEAD
  end

  def repeat_weekly
    @appointment = Appointment.find(params[:id])
  end

  def repeat_monthly
    @appointment = Appointment.find(params[:id])
  end

  def search
    @appointments = Appointment.search(params[:search])
  end

=======
end
def repeat_weekly
@appointment = Appointment.find(params[:id])
end
def repeat_monthly
@appointment = Appointment.find(params[:id])
end
>>>>>>> ce3cc722ea14c7c6e5f633020c82410435ef1938
  def create
    @appointment = Appointment.new(params.require(:appointment).permit(:title, :text, :start_date, :start_time, :end_time, :end_date))

    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      #redirect_to @appointment
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    @appointment = Appointment.find(params[:id])

    if @appointment.update(appointment_params)
      #redirect_to @appointment
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy

    #  redirect_to appointments_path
    redirect_to root_path
  end



  private
  def appointment_params
    params.require(:appointment).permit(:title, :text, :start_date, :start_time, :end_time, :end_date)
  end
end
