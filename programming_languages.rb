def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |lang, type_hash|
      style_arr = []
      type_hash.each do |type_label, type|
        new_hash[lang] = {
          type_label => type,
          :style => style_arr << style
        }
      end
    end
  end
  new_hash
end
