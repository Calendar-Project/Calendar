module Rendezvous
  class Data < Grape::API

    resource :rendezvous_data do
      desc "List all Appointments"

      get do
        Appointment.all
      end

      desc "create a new appointment"
      ## This takes care of parameter validation
      params do
        requires :title, type: String
        requires :text, type:String
        requires :start_date, type:String
        requires :start_time, type:String
        requires :end_date, type:String
        requires :end_time, type:String
      end
      ## This takes care of creating employee
      post do
        Appointment.create!({
          title:params[:title],
          text:params[:text],
          start_date:params[:start_date],
          start_time:params[:start_time],
          end_date:params[:end_date],
          end_time:params[:end_time]
        })
      end
      desc "delete an appointment"
      params do
        requires :id, type: String
      end
      delete ':id' do
        Appointment.find(params[:id]).destroy!
      end
      desc "update an appointment"
params do
  requires :id, type: String
  requires :title, type: String
  requires :text, type:String
  requires :start_date, type:String
  requires :start_time, type:String
  requires :end_date, type:String
  requires :end_time, type:String
end
put ':id' do
  Appointment.find(params[:id]).update({
    title:params[:title],
    text:params[:text],
    start_date:params[:start_date],
    start_time:params[:start_time],
    end_date:params[:end_date],
    end_time:params[:end_time]
  })
end
    end

  end
end
