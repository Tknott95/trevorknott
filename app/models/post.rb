class Post < ActiveRecord::Base
  validates_presence_of :title, :image, :description
end
