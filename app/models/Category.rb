class Category < ActiveRecord::Base
  belongs_to :admin
  has_many :ideas
end
