module BlogPostHelper
	#Given a DateTime object, return the date that should be displayed
	#If post is within the hour, display like "x mins ago"
	#Otherwise, if post is from today, display like "x hours ago"
	#Otherwise, is post is from yesterday, display "yesterday"
	#Otherwise, if post is within 7 days old, display "x days ago"
	#Otherwise, display date "mm/dd/yyyy"
	def get_date_string(date)
		curr_date = Time.now.getutc

		blog_day = date.strftime("%d")
		curr_day = curr_date.strftime("%d")

		if (blog_day == curr_day) then
			blog_hour = date.strftime("%k")
			curr_hour = curr_date.strftime("%k")
			hours_ago = curr_hour.to_i - blog_hour.to_i
			if (hours_ago == 0) then
				blog_min = date.strftime("%M")
				curr_min = curr_date.strftime("%M")
				mins_ago = curr_min.to_i - blog_min.to_i
				if (mins_ago == 0) then
					return "just now"
				elsif (mins_ago == 1) then
					return mins_ago.to_s + " min ago"
				else
					return mins_ago.to_s + " mins ago"
				end
			else
				if (hours_ago == 1) then
					return hours_ago.to_s + " hour ago"
				else 
					return hours_ago.to_s + " hours ago"
				end
			end
		end

		return date.strftime("%-m/%-d/%y at %-I:%M %p")
	end

	#Given the content string of a blog post, return the (possibly shortened) 
	#string that should be displayed on the page of all blog posts.
	#Will crop a string that is too long and add a "..."
	def get_content_string(content)
		if (content.length > 200) then
			return content[0, 200] + "..."
		else
			return content
		end
	end
end