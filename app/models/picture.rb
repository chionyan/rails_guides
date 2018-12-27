# == Schema Information
#
# Table name: pictures
#
#  id             :bigint(8)        not null, primary key
#  imageable_type :string
#  name           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  imageable_id   :bigint(8)
#
# Indexes
#
#  index_pictures_on_imageable_type_and_imageable_id  (imageable_type,imageable_id)
#

class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
