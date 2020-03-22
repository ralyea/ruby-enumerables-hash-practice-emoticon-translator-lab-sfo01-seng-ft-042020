# require modules here
require 'yaml'

def load_library(file)
  emojis = YAML.load_file("lib/emoticons.yml")
  result = {
    "get_meaning" => {},
    "get_emoticon" => {},
  }
  emojis.each do |definition, emoji|
    english = emoji[0]
    japanese = emoji[1]
    result["get_meaning"][japanese] = definition
    result["get_emoticon"][english] = japanese
  end
  result
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end