def dictionary
  dictionary= {
    "hello"=>"hi",
    "to"=>"2",
    "two"=>"2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&"
  }
end

def word_substituter(tweet)
  tweet=tweet.split(" ")
  new_tweet=[]
  tweet.each do |word|
    if dictionary.has_key?(word.downcase)==true
      new_tweet<<dictionary[word.downcase]
    else
      new_tweet<<word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  # use word_substituter
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length>140
    word_substituter(tweet)
  else
    tweet
  end
  #shortens only if longer than 140 char
end

def shortened_tweet_truncator(tweet)
  tweet= word_substituter(tweet)
  if tweet.length>140
    tweet= "#{tweet[0...137]}..."
  end
  tweet
end
