class About < ActiveRecord::Base

  validates :title,
            presence: true,
            length: {minimum: 10, maximum: 40}

  validates :column_1,
            presence: true,
            length: {minimum: 40, maximum: 600}

  validates :column_2,
            presence: true,
            length: {minimum: 40, maximum: 600}

  validates :column_3,
            presence: true,
            length: {minimum: 40, maximum: 600}

    validates :image,
            presence: true

end
