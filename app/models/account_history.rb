# == Schema Information
#
# Table name: account_histories
#
#  id            :bigint(8)        not null, primary key
#  credit_rating :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  account_id    :bigint(8)
#
# Indexes
#
#  index_account_histories_on_account_id  (account_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#

class AccountHistory < ApplicationRecord
  belongs_to :account
end
