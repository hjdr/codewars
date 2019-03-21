def sortme(courses)
  sorted_arr, output = [], []
  courses.each { |element| sorted_arr << element.split("-") }
  sorted_arr = sorted_arr.sort_by { |name, date| [date, name] }
  sorted_arr.each { |name, date| output << name + "-" + date }
  output
end

sortme(["web-1305", "site-1305", "web-1304", "site-1304"])
