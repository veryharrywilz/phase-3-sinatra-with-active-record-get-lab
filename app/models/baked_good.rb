class BakedGood < ActiveRecord::Base
  belongs_to :bakery

  def self.by_price
    self.order(:price)
  end

  def self.most_expensive
    self.order(:price).last
  end

end
