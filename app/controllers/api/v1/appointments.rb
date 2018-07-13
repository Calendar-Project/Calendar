module API
  module V1
    class Appointments < Grape::API
      include API::V1::Defaults

      resource :appointments do
        desc "Return all appointments"
        get "", root: :appointments do
          Appointment.all
        end

        desc "Return an appointment"
        params do
          requires :id, type: String, desc: "ID of the
            appointment"
        end
        get ":id", root: "appointment" do
          Appointment.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
