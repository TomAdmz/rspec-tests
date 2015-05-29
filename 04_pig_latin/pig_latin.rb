def translate(phrase)
	vowels = ["a", "e", "i", "o", "u"]
	phrase_arr = phrase.split(" ")
	full_phrase = []

	phrase_arr.each do |word|
		word_arr = word.split(//)
		first_sound = []

		word_arr.each_with_index do |char, index|
			if vowels.include?(char)
				break unless char == "u" && word_arr[index - 1] == "q"
			end
			first_sound.push(char)
		end

		first_sound_strng = first_sound.join
		rest_of_word = word_arr.join

		rest_of_word.sub!(first_sound_strng, "")
		full_phrase.push(rest_of_word + first_sound_strng + "ay")
	end

	return full_phrase.join(" ")

end