def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, num=2)
	rword = []
	num.times do
		rword.push(word)
	end
	return rword.join(" ")
end

def start_of_word(word, num)
	strt = []
	idx = 0
	num.times do
		strt.push(word[idx])
		idx += 1
	end
	strt.join()
end

def first_word(strng)
	strng = strng.split()
	return strng[0]
end

def titleize(string)
	small_word_array = ["a", "an", "and", "the", "amid", "as", "at", "but", "by", "down", "for", "from",
						"in", "into", "like", "near", "of", "off", "on", "onto", "over", "per",
						"than", "to", "up", "upon", "via", "with"]
	array = string.split(" ")
	array.map do |word|
		if small_word_array.include?(word)
			if array.index(word) == 0 || array.index(word) == -1
				word.capitalize!
			end
		else
			word.capitalize!
		end
	end
	string = array.join(" ")
end

