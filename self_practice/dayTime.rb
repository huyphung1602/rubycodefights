
class Integer
  def seconds
    self
  end

  def ago
    Time.now - self
  end

  def from_now
    Time.now + self
  end

  def minutes
    60*seconds
  end

  def hours
    60*minutes
  end

  def days
    24*hours
  end

  def months
    30*days
  end

  def years
    12*months
  end
end



puts 2.seconds.ago
puts 2.seconds.from_now
puts 1.minutes.from_now
puts 1.months.from_now
puts 1.years.ago
