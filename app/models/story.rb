class Story < ApplicationRecord
  
  include PublicActivity::Model
  tracked

  tracked owner: Proc.new { |controller, model| controller.current_user }


  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true


end
