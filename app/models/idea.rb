class Idea < ActiveRecord::Base
  belongs_to :user
  validats: title:, body:, presence: true
end
