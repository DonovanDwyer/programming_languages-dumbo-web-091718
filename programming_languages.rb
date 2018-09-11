def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |lang, type_hash|
      style_arr = []
      type_hash.each do |type_label, type|
        if new_hash.key?(lang)
          new_hash[lang][:style] = style_arr.push("booty")
        else
          style_arr << style
          new_hash[lang] = {
            type_label => type,
            :style => style_arr
          }
        end
      end
    end
  end
  puts new_hash
end

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

reformat_languages(languages)