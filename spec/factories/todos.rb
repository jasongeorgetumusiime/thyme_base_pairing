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
FactoryBot.define do
  factory :todo do
    description { "MyString" }
    status { "MyString" }
    list_id { "" }
  end
end
