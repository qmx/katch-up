module KatchUp
	class Base
		def expected_hours
			weekdays(Time.now.utc) * 8
		end

		def weekdays(now = Time.now.utc.end_of_month)
			now.utc.beginning_of_month.weekdays_until(now.utc.to_date)
		end
	end
end
