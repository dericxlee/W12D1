json.id @pokemon.id
json.name @pokemon.name
json.number @pokemon.number

if @pokemon.captured == true
    json.image_url @pokemon.image_url
end

json.captured @pokemon.captured
json.type @pokemon.poke_type
json.attack @pokemon.attack
json.defense @pokemon.defense
json.moves @pokemon.id.moves
