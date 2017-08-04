# Write your code here.
def dictionary
  dictionary = {
    "too" => "2",
    "to" => "2",
    "two" =>"2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (string)
  words = string.split(" ")
  words.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  characters = string.split("")
  character_count = characters.length

  character_count > 140 ? word_substituter(string) : string
end

def shortened_tweet_truncator(string)
  if word_substituter(string).length > 140
    word_substituter(string)[0..136] + "..."
  else
    string
  end
end
