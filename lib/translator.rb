# require modules here
require "yaml"
require "pry"
def load_library(filename)
  # code goes here
  file = YAML.load_file(filename)
  output = {}
  file.each {|translation, array|
      output[translation] = {:english => array[0], :japanese => array[1]}
  }
  output
end

def get_japanese_emoticon(filename, emoticon)
  # code goes here
  file = load_library(filename)
  file.each {|key, value|
    binding.pry
    if value[:japanese] == emoticon
      return key
    end
  }
end

def get_english_meaning
  # code goes here

end

load_library('lib/emoticons.yml')
