require "time"

def unlucky_days(input_year)
  start_date = Time.parse("27-03-" + input_year.to_s)
  puts start_date
  puts start_date.wday
  test = start_date.strftime("%j-%w : %d-%m-%Y")
  puts test[0..2]
end

unlucky_days(2018)


test = Time.strptime("172-2018", "%j-%Y")

puts test
