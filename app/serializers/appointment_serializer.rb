class AppointmentSerializer < ActiveModel::Serializer

  attributes :id, :title, :note, :start_date,
       :start_time, :end_date, :end_time
end
