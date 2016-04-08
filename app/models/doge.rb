class Doge < ActiveRecord::Base
  belongs_to :user


  def before_save 
    self.dogeName.captialize
  end
end
