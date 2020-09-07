# require modules here
require "yaml"
def load_library(filename)
  # code goes here
  file = YAML.load_file(filename)
  translator = {}
  file.each {|translation, array|
      translator[translation] = {:english => array[0], :japanese => array[1]}
  }
  translator
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
