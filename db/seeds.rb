fruits = ['Mango', 'Pineapple', 'Passion fruit', 'Dragonfruit']
fruits.each do |fruit|
  Fruit.find_or_create_by!(name: fruit, description: "I am a delicious #{fruit}.")
end
