require 'pry'

def dictionary
  dictionary_hash = { "hello" => "hi",
                     ["to", "two", "too"] => "2",
                     ["for", "four"] => "4",
                     "be" => "b",
                     "you" => "u",
                     "at" => "@",
                      "and" => "&"
    }

end

def word_substituter(tweet)
  tweet_arr = tweet.split(/ /)
  dictionary_keys = dictionary.keys.flatten

    new_arr = tweet_arr.each do |tweet|
      dictionary_keys.each do |word|
      if tweet == word
        dictionary.each do |k, v|
        if word == k
        word = v
    end
    end
    end
    end
    end
    new_arr.join(" ")
 end
