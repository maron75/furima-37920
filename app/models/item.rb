class Item < ApplicationRecord

  has_one_attached :image
  validates :image, presence: true
  validates :name, presence: true
  validates :detail, presence: true
  validates :category_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :condition_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :shipping_cost_id, presence: true, numericality: { other_than: 1, message: "can't be blank"} 
  validates :prefecture_id, presence: true, numericality: { other_than: 0 , message: "can't be blank"} 
  validates :shipping_day_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping_cost
  belongs_to :prefecture
  belongs_to :shipping_day

  
end

