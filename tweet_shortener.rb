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
      word = val
    end
    end
    new_array[counter] = word
    counter += 1
  end
  new_array.join(" ")
end 

def bulk_tweet_shortener (tweets)
  tweets.each do |tweet|
    puts  word_substituter(tweet)
  end 
end

def selective_tweet_shortener (tweet)
  if tweet.length < 140
    return tweet
  else 
    return word_substituter(tweet)
  end
end 

def shortened_tweet_truncator(tweet)
  if tweet <= 140
    return tweet
  else
    shortened =  word_substituter(tweet)
  end 
  if shortened.length <= 140
    return shortened
  else
    return shortened[0..136] + "..."
  end
end