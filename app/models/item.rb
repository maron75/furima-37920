class Item < ApplicationRecord

  validates :name, presence: true
  validates :detail, presence: true
  validates :category_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :condition_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :shipping_cost_id, presence: true, numericality: { other_than: 1, message: "can't be blank"} 
  validates :prefecture_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :shipping_day_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :price, presence: true
  validates :user, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping_cost
  belongs_to :prefecture
  belongs_to :shipping_day
end

