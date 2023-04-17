# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  price      :integer          not null
#  happiness  :integer          not null
#  image_url  :string           not null
#  pokemon_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord
    validates :name, length: {in: 0..255}
    validates :price, numericality: {greater_than_or_equal: 0}
    validates :happiness, numericality: {greater_than_or_equal: 0}
    validates :image_url, presence:true

    belongs_to :pokemon,
    foreign_key: :pokemon_id,
    class_name: :Pokemon
end
