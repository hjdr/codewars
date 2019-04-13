

def duration_format(seconds)
    sec_total, min_total, hour_total, day_total, year_total = 1, 60, 3600, 86400, 31536000
    minute_count= seconds / min_total
    hour_count = seconds / hour_total
    day_count = seconds / day_total
    year_count = seconds / year_total

    output = "#{year_count} year, " if day == 1
    output = "#{year_count} years, " if day > 1
    day = (seconds % year_total) / day_total

    hour = (seconds % day_total) / hour_total
    minute = (seconds % hour_total) / min_total
    seconds = (seconds % min_total) / sec_total
    print year_count.to_s + " years " + day.to_s + " days " + hour.to_s + " hours " + minute.to_s + " minutes " + seconds.to_s + " seconds " + "\n"
end


duration_format(31649116)


=begin
minute = 60
hour = 3600
day = 86400
year = 31536000
=end