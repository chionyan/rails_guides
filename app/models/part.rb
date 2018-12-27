# == Schema Information
#
# Table name: parts
#
#  id          :bigint(8)        not null, primary key
#  part_number :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Part < ApplicationRecord
  has_and_belongs_to_many :assemblies
end
