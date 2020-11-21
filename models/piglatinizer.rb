class PigLatinizer

    def piglatinize(text)
        text.split(" ").map do |word|
            if %w(a e i o u A E I O U).include?(word[0])
                word + "way"
            else
                word.split(/([aeiou].*)/)[1]+word.split(/([aeiou].*)/)[0]+"ay"
            end
        end.join(" ")
    end
end