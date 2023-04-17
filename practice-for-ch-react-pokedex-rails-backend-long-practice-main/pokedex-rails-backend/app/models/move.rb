# == Schema Information
#
# Table name: moves
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Move < ApplicationRecord
    validates :name, presence: true, uniqueness: { message: "'%{value}' is taken" }

    has_many :poke_moves,
    foreign_key: :move_id,
    class_name: :PokeMove

    has_many :pokemons,
    through: :poke_moves,
    source: :pokemon
end
