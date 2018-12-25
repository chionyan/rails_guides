# == Schema Information
#
# Table name: accounts
#
#  id             :bigint(8)        not null, primary key
#  account_number :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  supplier_id    :bigint(8)
#
# Indexes
#
#  index_accounts_on_supplier_id  (supplier_id)
#
# Foreign Keys
#
#  fk_rails_...  (supplier_id => suppliers.id)
#

class Account < ApplicationRecord
  belongs_to :supplier
end
