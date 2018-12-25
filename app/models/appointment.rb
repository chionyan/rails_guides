# == Schema Information
#
# Table name: appointments
#
#  id           :bigint(8)        not null, primary key
#  appoint_date :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  patient_id   :bigint(8)
#  physician_id :bigint(8)
#
# Indexes
#
#  index_appointments_on_patient_id    (patient_id)
#  index_appointments_on_physician_id  (physician_id)
#
# Foreign Keys
#
#  fk_rails_...  (patient_id => patients.id)
#  fk_rails_...  (physician_id => physicians.id)
#

class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient
end
