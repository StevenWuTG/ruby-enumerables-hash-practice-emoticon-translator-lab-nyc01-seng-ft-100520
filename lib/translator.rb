# require modules here
require "yaml"
require "pry"

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  new_hash = {}
  
  emoticons.each do |key , value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
  end
  new_hash
  
end

def get_japanese_emoticon(path , emoticon)
  # code goes here
  library = load_library(path)
  binding.pry
end
 
def get_english_meaning
  # code goes here
end