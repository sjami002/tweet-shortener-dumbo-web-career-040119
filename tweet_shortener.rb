# Write your code here.
def dictionary
dictionary = {"hello" => "hi",
              "to" => "2",
              "two" => "2",
              "too" => "2",
              "for" => "4",
              "For" => "4",
              "four" => "4",
              "be" => "b",
              "you" => "u",
              "at" => "@",
              "and" => "&"}
end

def word_substituter(tweet)
  array = []
  array = tweet.split(" ")
  array.each_with_index do |word, index|
    if dictionary.keys.include?(word)
      array.insert(index, dictionary[word])
      array.delete_at(index + 1)
end
end
new_tweet = ""
new_tweet = array.join(" ")
puts new_tweet
new_tweet
end


def bulk_tweet_shortener(tweet)
  tweet.each do |word|
    word_substituter(word)
  end
end


def selective_tweet_shortener(tweet)
  if tweet > 140
    word_substituter(tweet)
  else
    tweet
  end
end
