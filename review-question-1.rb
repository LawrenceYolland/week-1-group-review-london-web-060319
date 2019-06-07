## QUESTION 1
require "pry"
pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]
# How would you get the url for Bulbasaur's ability?
def poke_ability(pokemon, poke_name)
    pokemon.find {|poke| poke[:name] == poke_name}[:abilities][0][:ability][:url]
end
# poke_ability(pokemon, "bulbasaur")

# def poke_ability(pokemon, poke_name)
#     pokemon.each do |poke| 
#         if poke[:name] == poke_name
#             poke[:abilities].each do |poke_data|
#                 poke_data[:ability].each do |ability|
#                 ability.each do |ability_value|
#                     if ability_value[0..3] == "http"
#                         puts ability_value
#                     end
#                 end
#             end
#         end
#     end
# end
# poke_ability(pokemon, "bulbasaur")

# How would you return the first pokemon with base experience over 40?
def experience(pokemon)
    pokemon.find {|poke| poke[:base_experience] > 40}[:name]
end

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def poke_experience(pokemon)
    pokemon.collect {|poke| poke[:name] if poke[:base_experience] > 40} 
end

# How would you return an array of all of the pokemon's names?
def poke_name(pokemon)
    pokemon.collect {|poke| poke[:name]} 
end

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
def big_pokemon?(pokemon)
    pokemon.any?{|poke| poke[:weight] > 60} 
end

