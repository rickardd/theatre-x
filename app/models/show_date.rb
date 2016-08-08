class ShowDate < ActiveRecord::Base
  belongs_to :show

  validates :date,
            presence: true,
            length: { in: 10..11}

  # validates :soldOut,
            #presence: true
            #inclusion: { in: [ "true", "false" ] }

end


