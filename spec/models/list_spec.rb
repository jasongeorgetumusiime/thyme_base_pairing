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
require 'rails_helper'

RSpec.describe List, type: :model do
  describe "#save" do
    it "validates correctly" do
      list = build(:list)
      list.save
      expect(list).to be_persisted
    end

    context "When name is unique" do
      it "validates correctly" do 
        list1 = build(:list)
        list2 = build(:list)

        list1.save
        list2.save

        expect(list1).to be_persisted
        expect(list2).not_to be_persisted
      end
    end
  end
end
