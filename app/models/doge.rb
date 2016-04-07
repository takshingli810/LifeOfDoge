class Doge < ActiveRecord::Base
  belongs_to :users

  validates :dogeName, uniqueness: true

  def before_save 
    self.dogeName.captialize
  end
end
