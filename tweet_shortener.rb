# Write your code here.
require "pry"
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2", "two" => "2", "too" => "2",
    "for" => "4", "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  to_array = string.split(" ")
  to_array.collect do |element|
    if dictionary.keys.include?(element.downcase)
          element = dictionary[element.downcase]
        else
          element
      end
    end.join(" ")
end

def bulk_tweet_shortener(string)
  string.each do |tweet|
puts word_substituter(tweet)
end
end

def selective_tweet_shortener(string)
    if string.length > 140
word_substituter(string)
else
  string
end
end

def shortened_tweet_truncator(string)
word_substituter(string)
  if string.length > 140
    string = string[0..136]
    string += "..."
  end
return string
end
