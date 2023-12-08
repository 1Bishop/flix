class Movie < ApplicationRecord
  def flop?
    total_gross.blank? || total_gross < 500
  end

end

