class Show < ActiveRecord::Base

  has_many :ShowDates
  has_many :ShowPrices

end
