class Computer < ApplicationRecord
  validates :mouse, presence: true,
                    if: [Proc.new { |c| c.market.retail? }, :desktop?],
                    unless: Proc.new { |c| c.trackpad.present? }

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
