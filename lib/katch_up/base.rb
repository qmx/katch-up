module KatchUp
	class Base
		def expected_hours
			weekdays(Time.now) * 8
		end

		def weekdays(now = Time.now.end_of_month)
			now.beginning_of_month.weekdays_until(now.to_date)
		end
	end
end
