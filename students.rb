class Student
  attr_reader(:name, :cohort, :can_talk, :favourite_language)
  attr_writer(:name, :cohort)

  def initialize(input_name, input_cohort, input_can_talk, input_favourite_language)
    @name = input_name
    @cohort = input_cohort
    @can_talk = input_can_talk
    @favourite_language = input_favourite_language
  end

  def talk()
    if @can_talk == true
      return "I can talk!"
    end
    return "I can't talk!"
  end

  def favourite_language()
      return "I love " + @favourite_language
  end

  #
end
