module Statistics
  def standard_deviation(number_set)
    mean = find_mean(number_set)
    step_1 = number_set.map { |num| ((num - mean) ** 2) }
    step_2 = step_1.inject(0) { |sum, n| sum + n }
    step_3 = number_set.length - 1
    step_4 = step_2 / step_3
    Math.sqrt(step_4).round(2)
  end

  def find_mean(number_set)
    sum(number_set) / number_set.length.to_f
  end

  def sum(number_set)
    number_set.inject(0) { |sum, n| sum + n }
  end

  def convert_to_day_names(days)
    day_names = {0 => "Sunday", 1 => "Monday", 2 => "Tuesday",
            3 => "Wednesday", 4 => "Thursday", 5 => "Friday",
            6 => "Saturday"}
    days.map { |day| day_names[day.to_i] }
  end
end
