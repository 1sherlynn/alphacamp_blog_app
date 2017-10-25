class Student < ApplicationRecord
	validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true

	def days_to_birthday 
		birthdate_this_year = Date.new(Time.zone.today.year, birthdate.month, birthdate.day)
		days = birthdate_this_year - Time.zone.today 

		if days < 0 
		#birthday has past 
			birthdate_next_year = Date.new(Time.zone.today.year + 1, birthdate.month, birthdate.day)
			birthdate_next_year - Time.zone.today 
		else 
			days 
		end

	end

end
