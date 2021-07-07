require "yaml"
require "pry"

def load_library(emoticons)
# binding.pry
  emo = YAML.load_file(emoticons)
  
  emo_hash = {}
  emo_hash["get_emoticon"] = {}
  emo_hash["get_meaning"] = {}
  
  emo.each do |english_w, emo_set|
    emo_hash["get_emoticon"][emo_set.first] = emo_set.last 
    emo_hash["get_meaning"][emo_set.last] = english_w
  end
  emo_hash
  
  
end

def get_japanese_emoticon(file, emo)
  emo_hash = load_library(file)
  result= emo_hash["get_emoticon"][emo] 
  
  
  result ? result : "Sorry, that emoticon was not found"
end

def get_english_meaning(file, emo)
  emo_hash = load_library(file)
  result = emo_hash["get_meaning"][emo] 
  
  result ? result : "Sorry, that emoticon was not found"
  
end