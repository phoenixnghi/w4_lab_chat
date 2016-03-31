class Message < ActiveRecord::Base
  belongs_to :user

  def self.last_five
    order('created_at DESC').limit(5).reverse
  end
end
