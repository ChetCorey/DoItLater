class User < ApplicationRecord
  has_many :todos
  before_save :titleize_name

  def titleize_name
    self.name = self.name.titleize
  end
end
