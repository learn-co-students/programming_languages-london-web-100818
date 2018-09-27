def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each { |style, language_hash|
    language_hash.each { |language, description|
      if new_hash.has_key?(language)
        new_hash[language][:style] << style
      else
        new_hash[language] = description
        new_hash[language][:style] = [style]
      end
    }
  }
  new_hash
end
