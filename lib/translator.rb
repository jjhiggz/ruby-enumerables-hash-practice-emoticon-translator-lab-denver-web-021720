# require modules here
require 'yaml'
require 'pry'
require 'pp'
def load_library(lib)
 a = YAML.load_file(lib)
 rHash = {}

 a.reduce({}) do |memo, (key,value)|

    if rHash[:get_meaning]
       rHash[:get_emoticon][a[key][0]]= a[key][1]
       rHash[:get_meaning][a[key][1]]= key
    else
       rHash[:get_emoticon]={a[key][0] => a[key][1]}
       rHash[:get_meaning]={a[key][1] => key}
    end
  end
  return rHash
end



a = load_library('lib/emoticons.yml')
pp a



def get_japanese_emoticon(data,emoticon)
  
  # code goes here
end

def get_english_meaning
  # code goes here
end
