class Doge < ActiveRecord::Base
  belongs_to :user
  has_many :pictures


  def before_save 
    self.dogeName.captialize
  end
end
