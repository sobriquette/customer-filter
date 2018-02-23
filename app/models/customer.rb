class Customer < ApplicationRecord
	def self.search(query)
		parts_of_name = query.to_s.strip.split(' ')
		if parts_of_name.length >= 2
			first_name = parts_of_name[0]
			last_name = parts_of_name[-1]
			where(first_name: first_name, last_name: last_name).order('first_name ASC, last_name ASC')
		elsif parts_of_name.length == 1
			where('first_name=? OR last_name=?', parts_of_name[0], parts_of_name[0]).order('first_name ASC')
		else
			all
		end
	end
end
