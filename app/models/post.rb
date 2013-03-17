class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :when

  scope :top_five, order('title desc').limit(5)
  scope :top_three, order('name').limit(3).offset(2)

end
