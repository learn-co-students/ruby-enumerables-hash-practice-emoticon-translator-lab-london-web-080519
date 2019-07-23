# require modules here

#  "./lib/emoticons.yml"

def load_library(file_path)

require 'yaml'
library = YAML.load_file(file_path)   #("./lib/emoticons.yml")#
#return library.inspect

emoticon_lib = {
 "get_meaning" => {},
 "get_emoticon" => {}
}

temp_emoticaon_library = library

new_hash = {}

temp_emoticaon_library.each do |key, array|

work_array = [array]

hashed = work_array.to_h

hashed.each do |key, value|

  #if !new_hash[key]
  #  new_hash[key] = value
  #end

  if !emoticon_lib["get_emoticon"][key]
    emoticon_lib["get_emoticon"][key] = value
  end


end

end



temp_meaning_library = library

temp_meaning_library.each do |key, array|
  array.shift
  array.each do |emoti|
    if !emoticon_lib["get_meaning"][emoti]
        emoticon_lib["get_meaning"][emoti] = ""
    end

    if emoticon_lib["get_meaning"][emoti]
       emoticon_lib["get_meaning"][emoti] << key
    end
end
end


#p temp_emoticaon_library
return emoticon_lib

end

def get_japanese_emoticon(file_path, emoticon)

  lkp_hash = load_library(file_path)

  lkp_hash.each do |top_key, items|

    if top_key = "get_emoticon"

#puts top_key
#puts items

   items.each do |key, value|

    # puts key
    # puts value

    if emoticon == key

puts emoticon
puts key

      return value

    else return "Sorry mate!"

    end
  end
end
end
#  get_japanese_emoticon("./lib/emoticons.yml", "a")


end

def get_english_meaning
  # code goes here
end
