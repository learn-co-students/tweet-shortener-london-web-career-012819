def dictionary
  sub_words = {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
  }
end

def word_substituter tweet_string
  tweet_array = tweet_string.split(" ")
  reduced_array =
  tweet_array.map do |word|
    if dictionary.keys.include?(word.downcase.to_sym)
      word = dictionary[word.downcase.to_sym]
    end
    word
  end
  reduced_array.join(" ")
end

def bulk_tweet_shortener tweet_arrayz
  tweet_arrayz.each do |x|
    puts word_substituter(x)
  end
end


def selective_tweet_shortener tweet
  if tweet.length > 140
    return word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator tweet
  if tweet.length <= 140
    return tweet
  end
  short_tweet = word_substituter(tweet)
  if short_tweet.length > 140
    return short_tweet[0..136] + "..."
  else
    return short_tweet
  end
end
