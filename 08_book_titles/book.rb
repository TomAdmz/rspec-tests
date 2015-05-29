class Book
	def title=(title)
		not_cap = ["a", "an", "and", "the", "amid", "as", "at", "but", "by", "down",
				   "for", "from", "in", "into", "like", "near", "of", "off", "on",
				   "onto", "over", "per", "than", "to", "up", "upon", "via", "with"]
		
		title_arr = title.split(" ")
		title_arr.map do |word, index|
			unless not_cap.include?(word)
				word.capitalize!
			end
		end

		title_arr[0].capitalize!
		title_arr[-1].capitalize!

		@title = title_arr.join(" ")
	end

	def title
		@title
	end
end