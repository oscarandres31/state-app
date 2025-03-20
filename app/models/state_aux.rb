# == Schema Information
#
# Table name: state_auxes
#
#  id         :bigint           not null, primary key
#  state_now  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class StateAux < ApplicationRecord
  self.table_name = "state_auxes"
  has_many :assistants #foreign_key: "state_aux_id"

  validates :state_now, presence: true
end
