class Show < ActiveRecord::Base

  has_many :ShowDates
  has_many :ShowPrices
  has_one :avatar

  validates_associated :ShowDates
  validates_associated :ShowPrices

  validates :title,
            presence: true,
            length: {minimum: 3, maximum: 50}

  validates :description,
            presence: true,
            length: {minimum: 50, maximum: 500}

  validates :display,
            inclusion: { in: [true, false]}

  # validates :image,
  #           presence: true



  def in_archive?
    self.display
  end

end
