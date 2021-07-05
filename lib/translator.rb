# require modules here

def load_library(file_location)
  require "yaml"
  emoticons = {"get_meaning" => {}, "get_emoticon" => {} }
  YAML.load_file(file_location).each do | meaning, emoticon | english, japanese = emoticon
    emoticons["get_emoticon"][english] = japanese 
    emoticons["get_meaning"][japanese] = meaning
  end 
  emoticons
end

def get_japanese_emoticon(file_path, meaning)
  # code goes here
  # load_library(file_path).fetch(["get_emoticon"][meaning], "Sorry, that emoticon was not found")
  if load_library(file_path)["get_emoticon"][meaning]
    result = load_library(file_path)["get_emoticon"][meaning]
  else
    result = p "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning(file_path, meaning)
  # code goes here
  if load_library(file_path)["get_meaning"][meaning]
    result = load_library(file_path)["get_meaning"][meaning]
  else 
    result = p "Sorry, that emoticon was not found"
  end
result
end

