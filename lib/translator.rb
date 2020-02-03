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
  a=load_library(data)
  wemorray = a[:get_emoticon]
  v = ''
  wemorray.reduce ({}) do |memo, (key,value)|
    if key == emoticon
      return wemorray[key]
    end
  end
  return "Sorry,that emoticon was not found"
end

def get_english_meaning(data,emoticon)
  a=load_library(data)
  wemorray = a[:get_meaning]
  v = ''
  wemorray.reduce ({}) do |memo, (key,value)|
    if key == emoticon
      return wemorray[key]
    end
  end
  return "bro I am really fucking sorry, but we cannot help you"
end
