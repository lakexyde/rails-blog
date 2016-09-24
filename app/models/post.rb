class Post < ActiveRecord::Base
  validates_presence_of :title, limit: {minimum:5}
end
