# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_lists_on_name  (name) UNIQUE
#
FactoryBot.define do
  factory :list do
    name { "MyString" }
  end
end
