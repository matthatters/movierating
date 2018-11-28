movies = Hash.new
movies["Star Wars".to_sym] = 3.7


def movie_menu
  puts "\nMenu: \nadd \nupdate \ndisplay \ndelete \nexit \n"
end

loop do
	movie_menu
  puts "Gimme some input: "
	choice = gets.chomp
  choice.downcase!

	case choice
  	when "add"
  		print "Movie Title: "
  		title = gets.chomp
  		if ( movies[title.to_sym].nil? )
      	print "Movie Rating: "
  			rating = gets.chomp
  			movies[title.to_sym] = rating.to_f
      	puts "#{title} has been added with a rating of: #{rating}"
    	else
      	puts "Movie already in library"
    	end  	
  	when "update"
  		print "Movie Title: "
  		title = gets.chomp
  		if ( movies[title.to_sym].nil? )
      	puts "Error: Movie Not Found"
    	else   
      	print "New Rating: "
      	rating = gets.chomp
      	movies[title.to_sym] = rating.to_f
      	puts "#{title} has been updated with a rating of: #{rating}"
    	end
  	when "display"
  		movies.each { |movie, rating| 
      	puts "#{movie}: #{rating}"
      	}
  	when "delete"
  		print "Movie to delete: "
  		title = gets.chomp
  		if ( movies[title.to_sym].nil?  )
      	puts "Movie not in library"
    	else
      	movies.delete(title.to_sym)
      	puts "#{title} has been removed from library"
    	end
  	when "exit"
  		puts "Goodbye!"
  		break
		else
  		puts "Error: #{choice} is not valid"
	end
end 