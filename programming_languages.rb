def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |lang, type_hash|
      type_hash.each do |type_label, type|
        new_hash[lang] = {
          type_label.to_sym => type,
          :style => style.to_sym
        }
      end
    end
  end
  new_hash
end
