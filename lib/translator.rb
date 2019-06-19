require "yaml"

def load_library(file_path)
emoticons = {"get_meaning" => {}, 
"get_emoticon" => {} }
YAML.load_file(file_path).each do |meaning,emoticon|
  english, japanese = emoticon
  emoticons["get_emoticon"][english] = japanese 
  emoticons["get_meaning"][japanese] = meaning
end 
emoticons
end


def get_japanese_emoticon(file_path,emoticon)
  emoticons = load_library(file_path)
  result = emoticons["get_emoticon"][emoticon]
  if result 
    result
  else
    "Sorry, that emoticon was not found"
end
end 

def get_english_meaning(file_path,meaning)
emoticons = load_library(file_path)
result = emoticons["get_meaning"][meaning]
if result
  result
else
  "Sorry, that emoticon was not found"
end
end