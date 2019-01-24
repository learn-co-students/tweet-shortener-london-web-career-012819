require 'pry'

def dictionary
  dictionary_hash = { "hello" => "hi",
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

end

def word_substituter(tweet)
  tweet_arr = tweet.split(/ /)
    tweet_arr.each_with_index do |tweet, index|
      dictionary.each do |key, value|
      if key == tweet
        tweet_arr[index] = value
      end
    end
  end
    tweet_arr.join(" ")
 end
