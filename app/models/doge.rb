class Doge < ActiveRecord::Base
  belongs_to :users


  def before_save 
    self.dogeName.captialize
  end
end
