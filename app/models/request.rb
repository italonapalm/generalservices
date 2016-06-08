class Request < ActiveRecord::Base
  belongs_to :user, foreign_key: :requester
  belongs_to :service
end
