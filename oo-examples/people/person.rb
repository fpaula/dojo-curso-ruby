class Person
  # attr_accessor :name
  attr_reader :name

  def initialize(name, year)
    @name = name
    @year_of_birth = year
    @permission = false
  end

  def has_permission?(area)
    if area == 'dashboard'
      false
    else
      true
    end
  end

  def age
    year = calculate_current_year
    month = calculate_current_month
    calculate_person_age
  end

  def self.months_to_be_born
    9
  end

  private

  # attr_reader :name, :year_of_birth

  def bank_account_password
    123456
  end

  def calculate_current_year
  end

  def calculate_current_month
  end

  def calculate_person_age
    Time.now.year - @year_of_birth
  end
end
