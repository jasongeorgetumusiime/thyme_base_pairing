# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  description :string
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  list_id     :integer
#
# Foreign Keys
#
#  list_id  (list_id => lists.id)
#
require 'rails_helper'

RSpec.describe Todo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
