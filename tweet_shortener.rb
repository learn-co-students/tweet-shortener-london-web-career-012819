# Write your code here.
require "pry"

def dictionary
  hash = {
    "hello" => "hi",
    "to, two, too" => "2",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for, four" => "4",
    "for" => "4",
    "four" => "4",
    "For" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")

  tweet_array.each_with_index do |word, index|
    dictionary.each do |key, slang|
      if key == word
        tweet_array[index] = slang
      end
    end
  end

  str = tweet_array.join(" ")

  return str

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
  substitute = word_substituter(tweet)
  if substitute.length > 140
    substitute[0..139]
  else
    substitute
  end







end
