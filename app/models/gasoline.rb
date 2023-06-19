class Gasoline
  include ActiveModel::Model

  attr_accessor :total_distance, :fuel_efficiency, :price_per_liter

  validates :total_distance, :fuel_efficiency, :price_per_liter, presence: true

  def calculate
    return nil unless valid?

    gasoline_cost = (total_distance.to_f / fuel_efficiency.to_f) * price_per_liter.to_f
  gasoline_cost.round(1)
  end
end
