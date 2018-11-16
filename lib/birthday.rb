class Birthday

  attr_reader :name, :day, :month, :year

  DAYS_IN_A_YEAR = 365

  def initialize(name, day, month, year)
    @name, @day, @month, @year = name, day, month, year
  end

  def today
    @today = Time.new.yday
  end

  def bday
    @bday = Time.new(year, month, day).yday
  end

  def is_your_bday?
    self.bday == self.today ? "Happy Birthday, #{@name}" : days_missing
  end

  def days_missing
    self.bday > self.today ? (@bday - @today) : ((DAYS_IN_A_YEAR - @today) + @bday)
  end
end

# t = Birthday.new('cesare', 31, 12, 2017)
# c = Birthday.new('cesare', 16, 11, 2017)
# p t.is_your_bday?
# p c.is_your_bday?
# p c.bday
# p c.today
# p t.bday
# p t.today
