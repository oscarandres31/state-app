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
require "test_helper"

class AssistantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
