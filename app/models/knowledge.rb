class Knowledge < ActiveRecord::Base
  belongs_to :profession
  has_many :users, through: :user_knowledges
end
