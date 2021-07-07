require "yaml"



def load_library(file_path)
  library = {}
  library['get_meaning'] = {}
  library['get_emoticon'] = {}
  YAML.load_file(file_path).each { |key, value| 
    library['get_meaning'][value[1]] = key
    library['get_emoticon'][value[0]] = value[1]
  }
  library
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  if !library['get_emoticon'][emoticon]
    return 'Sorry, that emoticon was not found'
  end
  library['get_emoticon'][emoticon]
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  if !library['get_meaning'][emoticon]
    return 'Sorry, that emoticon was not found'
  end
  library['get_meaning'][emoticon]
end