class Message < ActiveRecord::Base
  belongs_to :user
  validates :content, presence: true

  def self.last_five
    order('created_at DESC').limit(5).reverse
  end
end
