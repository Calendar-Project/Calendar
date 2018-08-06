class AppointmentsController < ApplicationController
  def index
     @appointments = Appointment.all
     if params[:search]
       @appointments = Appointment.search(params[:search]).order("created_at DESC")
     else
       @appointments = Appointment.all.order("created_at DESC")
     end
   end

   def show
     @appointment = Appointment.find(params[:id])
   end

  def new
  @appointment = Appointment.new
  end

  def edit
  @appointment = Appointment.find(params[:id])

  end

  def repeat_weekly
    @appointment = Appointment.find(params[:id])
  end

  def repeat_monthly
    @appointment = Appointment.find(params[:id])
  end
  def self.search(search)
    if search
      search.where("title like?","%#{search}%")
    else
      self.all
    end
  end



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
