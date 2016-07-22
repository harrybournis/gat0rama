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
