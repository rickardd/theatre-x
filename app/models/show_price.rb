class ShowPrice < ActiveRecord::Base
  belongs_to :show

  validates :price,
            presence: true,
            length: { minimum: 1, maximum: 4},
            numericality: true

  validates :description,
            presence: true,
            length: { minimum: 5, maximum: 35 }
end
