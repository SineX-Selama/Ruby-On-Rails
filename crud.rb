books = {
	DBA: 8,
	Web: 8,
	DLD: 7,
}

puts "+---------------+
|Welcome to Ruby|
+---------------+----------+
|What would you like to do?|
+--------------------------+"
puts "Enter: (1 to Add) (2 for Update) (3 To Delete) (4 To get Book List)"
	choice = gets.chomp

	case choice
	when "1"
		puts "Enter title of the Book"
		title = gets.chomp
	if books[title.to_sym].nil?
		puts "Enter Rating 1 to 10"
		rating = gets.chomp
		books[title.to_sym] = rating.to_i
		puts "#{title} has been added to your book collection with rating of #{rating}"
	else puts "That Book is already added"
	end

	when "2"
		puts "Which Book's rating you need to change?(Enter Title)"
		title = gets.chomp
		if books[title.to_sym].nil?
			puts "Book Not Found!"
		else puts "Enter New Rating for the Book..."
			rating = gets.chomp
		books[title.to_sym] = rating.to_i
		puts "#{title}'s Rating have been updated to #{rating}!"
		end
	when "3"
		puts "Which Book You want to Delete(Enter Title)"
		title = gets.chomp.to_sym
		if books[title.to_sym].nil?
			puts "Book Doesn't Exist!!!"
		else books.delete(title)
		end

	when "4"
		books.each do |book, rating|
			puts "#{book}: #{rating}"
	end
else "Something went wrong! :("
end

puts books