require 'pry'

def dictionary
  subs = {
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
end


def word_substituter(string)
  string = string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  p string.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(string)
  if string.size > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if word_substituter(string).size > 140
    string = "#{string[0..136]}..."
  else
    string
  end
end
