class Product < ActiveRecord::Base
  validates_presence_of :title, :description, :image_url
  validates_numericality_of :price, :only_integer => true, :greater_than => 0
  validates_uniqueness_of :title
  validates_format_of :image_url, :with => /\.(gif|jpg|png)\Z/i
end
