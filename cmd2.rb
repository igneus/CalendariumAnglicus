require 'calendarium-anglicus'

first, second, third, fourth, fifth = ARGV

year = first.to_i

#Not used yet.
start_month = second.to_i
start_day = third.to_i
end_month = fourth.to_i
end_day = fifth.to_i


sanctorale = CalendariumAnglicus::SanctoraleLoader.new.load_from_file 'data/ordinariate-en.txt'
temporale = CalendariumAnglicus::Temporale.new(year)


CalendariumAnglicus::Calendar.new(year, sanctorale, temporale).each do |day|
	puts "Calendar Date: #{day.date} #{day.date.strftime('%A')}"
		celebration = day.celebrations[0]
		day.celebrations.each do | c |
			puts "\t" + c.title
		end		
end

