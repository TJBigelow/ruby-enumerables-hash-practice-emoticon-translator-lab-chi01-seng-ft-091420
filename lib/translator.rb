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
    if value[:english] == emoticon
      return value[:japanese]
    else
      return "Sorry, that emoticon was not found"
    end
  }
end

def get_english_meaning
  # code goes here
  file = load_library(filename)
  file.each {|key, value|
    if value[:japanese] == emoticon
      return key
    else
      return "Sorry, that emoticon was not found"
    end
  }
end

load_library('lib/emoticons.yml')
