module PostingHelper
	def get_opportunity_type(ptype)
		if ptype == "full_time"
			return "Full Time"
						
		elsif ptype == "part_time"
			return "Part Time"
						
		else ptype == "internship"
			return "Internship"	
		end 
	end
end
