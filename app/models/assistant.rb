# == Schema Information
#
# Table name: assistants
#
#  id           :bigint           not null, primary key
#  name         :text
#  state_aux_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Assistant < ApplicationRecord
  belongs_to :state_aux, class_name: "StateAux", foreign_key: "state_aux_id"
  has_one_attached :photo
  validates :name, presence: true
end
