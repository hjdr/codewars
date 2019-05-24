=begin  
Your task in order to complete this Kata is to write a function which formats a duration, given as a number of seconds, in a human-friendly way.
=end

def format_duration(seconds)
    return "now" if seconds == 0

    sec_total, min_total, hour_total, day_total, year_total, output, times, counter = 1, 60, 3600, 86400, 31536000, [], ["year", "day", "hour", "minute", "second"], 0
    time_totals = [year = seconds / year_total,
    day = (seconds % year_total) / day_total,
    hour = (seconds % day_total) / hour_total,
    minute = (seconds % hour_total) / min_total,
    second = (seconds % min_total) / sec_total]

    time_totals.each { | time | output << "#{time} #{time == 1 ? times[counter] + "," : times[counter] + "s," }" if time > 0
    counter +=1 }

    if output.length == 2
        output[0].chomp!(",")
        output.insert(1, "and").join(" ").chomp(",")
    elsif output.length >= 3
        output[-2].chomp!(",") 
        output.insert(-2, "and").join(" ").chomp(",")
    else
        output.join(" ").chomp(",")
    end
end