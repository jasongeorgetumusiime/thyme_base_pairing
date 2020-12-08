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
class Todo < ApplicationRecord
  STATUSES = ["complete", INCOMPLETE = "incomplete"]

  validates :description, presence: true
  validates :list_id, presence: true
  validates :status, presence: true, inclusion: { in: STATUSES }

  belongs_to :list

  # Todo descriptions are unique to a list.

end
