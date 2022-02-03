class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 2 }
  validates :annual_revenue, numericality: { greater_than: 0 }

  def must_have
    errors.add(:base, "No apparel") if :mens_appreal == false && :womens_appreal == false
  end
end
