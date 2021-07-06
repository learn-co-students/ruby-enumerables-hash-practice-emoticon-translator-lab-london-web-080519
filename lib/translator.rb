  require "yaml"

def load_library(file_path)

  emoticons = YAML.load_file(file_path)
  emoticon_hash = {
      "get_meaning" => {}, #keys inside get_meaning hash are japanese emoticons and point to their meanings {☜(⌒▽⌒)☞, angel}
      "get_emoticon" => {}  #are the english emoticons, point to their japanese equivalents {O:),"☜(⌒▽⌒)☞"}
    }
  emoticons.each do | translation, array |  # translation =>[english, japanese]
    emoticon_hash["get_meaning"][array[1]] = translation
    emoticon_hash["get_emoticon"][array[0]] = array[1]
  end

emoticon_hash
end

def get_japanese_emoticon(file_path, eng_emoticon) #return japanese emoticon
  hash = load_library(file_path)
  if hash["get_emoticon"][eng_emoticon]
    return hash["get_emoticon"][eng_emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(file_path, japanese_emoticon)
  hash = load_library(file_path)
  if hash["get_meaning"][japanese_emoticon]
    return hash["get_meaning"][japanese_emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
  end
