def dictionary
  replacements = {hello: "hi", to: "2", two: "2", too: "2",
  for: "4", four: "4", be: "b", you: "u", at: "@", and: "&"}
end 

def word_substituter (tweet)
  array = tweet.split(" ")
  replacements = dictionary
  counter = 0 
  new_array = []
  
  array.each do |word|
    replacements.each do |key,val|
      
    if word.capitalize == (key.to_s).capitalize
      new_array[counter] = val
    else
      new_array[counter] = word
    end
    end
    counter += 1
  end
  new_array.join(" ")
end 