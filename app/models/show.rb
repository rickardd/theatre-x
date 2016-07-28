class Show < ActiveRecord::Base

  has_many :ShowDates
  has_many :ShowPrices

  def in_archive?
    self.display
  end

end
