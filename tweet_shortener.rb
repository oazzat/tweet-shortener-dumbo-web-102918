def dictionary
  replacements = {hello: "hi", to: "2", two: "2", too: "2",
  for: "4", four: "4", be: "b", you: "u", at: "@", and: "&"}
end 

def word_substituter (tweet)
  array = tweet.split(" ")
  replacements = dictionary
  
  array.collect do |word|
    
    replacements.each do |key,val|
      
    if word.capitalize == (key.to_s).capitalize
      word = val
    end 
    end 
  end
end 