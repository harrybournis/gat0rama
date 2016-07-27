=begin #######
	Generates random resources using the Faker gem.

	Usage:
		Randomizer.<resourcename>(<optional: number of resources>)

	Returns:
		Object 	 if number of resources is 1
		[] Array if number of resources is > 1
=end   #######

class Randomizer



	def self.member(number=1, admin=false)
		results = []

		number.times do
			member = Member.new(
				first_name: Faker::Name.first_name,
				last_name: Faker::Name.last_name,
				is_admin: admin,
				email_public: Faker::Internet.email,
				bio: Faker::Hipster.paragraph)

			if member.save
				Rails.logger.info "\n %^&* Randomly Created Member: #{ member.inspect } \n"
				results << member
			end
		end

		to_return(results)
	end



	def self.post(number=1, authors=nil)
		results = []

		number.times do
			post = Post.new(
				title: Faker::Hipster.sentence,
				subtitle: Faker::Hacker.say_something_smart,
				body: Faker::Hipster.paragraphs(5).join,
				category: "fashion")

			if post.save
				Rails.logger.info "\n %^&* Randomly Created Post: #{ post.inspect } \n"
				results << post

				# add the post to the authors
				# unless authors.empty?
				# 	authors.each { |author| post << author }
				# end
			end
		end

		to_return(results)
	end



	def self.news(number=1, authors=nil)
		results = []

		number.times do
			news = News.new(
				title: Faker::Hipster.sentence,
				subtitle: Faker::Hacker.say_something_smart,
				body: Faker::Hipster.paragraphs(5).join,
				category: "fashion")

			if news.save
				Rails.logger.info "\n %^&* Randomly Created Post: #{ news.inspect } \n"
				results << news

				# add the post to the authors
				# unless authors.empty?
				# 	authors.each { |author| post << author }
				# end
			end
		end

		to_return(results)
	end



	def self.tag(number=1, only_seach_tag=false)
		results = []

		name_choices = []

		name_choices << Faker::Superhero.power
		name_choices << Faker::Book.genre
		name_choices << Faker::Team.creature
		name_choices << Faker::Hacker.ingverb
		name_choices << Faker::Company.profession
		name_choices << Faker::Commerce.color
		name_choices << Faker::StarWars.specie
		name_choices << Faker::Space.star
		name_choices << Faker::Music.instrument

		number.times do
			tag = Tag.new(
				name: name_choices.sample,
				only_search_tag: only_seach_tag)

			if tag.save
				Rails.logger.info "\n %^&* Randomly Created Tag: #{ tag.inspect } \n"
				results << tag
			end
		end

		to_return(results)
	end



private

	def self.to_return(results)
		if results.empty?
			return nil

		elsif results.size == 1
			return results.first

		else
			return results
		end
	end

end
