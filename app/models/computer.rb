class Computer < ApplicationRecord
  validates :mouse, presence: true,
                    if: [proc { |c| c.market.retail? }, :desktop?],
                    unless: proc { |c| c.trackpad.present? }

  class Market
    def retail?
      true
    end
  end

  def market
    Market.new
  end

  def desktop?
    true
  end
end
