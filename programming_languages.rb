languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  new_hash = {}
  style = nil
  languages.each do |key, language|
    style = key
    language.each do |key, info|
      if(new_hash[key].nil?)
        new_hash[key] = info
      end
      if(new_hash[key][:style].nil?)
        new_hash[key][:style] = [style]
      else
        new_hash[key][:style] << style
      end
      #new_hash[style][key][:style] = [style]
    end
  end
  new_hash
end

reformat_languages(languages)
