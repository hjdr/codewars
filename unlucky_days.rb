=begin
Friday 13th or Black Friday is considered as unlucky day. Calculate how many unlucky days are in the given year.
=end

require "date"

def unlucky_days(input_year)
  unlucky_day = 0
  start_date = Date.parse("01-01-" + input_year.to_s)
  for day in 0..364
    check_date = start_date.next_day(day)
      if check_date.wday.to_i == 5 && check_date.day.to_i == 13
      unlucky_day += 1
      end
  end
  return unlucky_day
end
