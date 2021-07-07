# Write your code here.
def dictionary(x)
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  y = x.downcase
  if words[y]
    return words[y]
  else
    return x
  end
end

def word_substituter(tweet)
  words = tweet.split
  new = []
  words.each do |word|
    new << dictionary(word)
  end
  new.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)
      if tweet.length > 140
        return "#{tweet[0..135]} ..."
      end
  else
    tweet
  end
end
