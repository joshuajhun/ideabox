class Idea < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
   validates  :title, :body, presence: true
end
