require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../students')

class TestStudents < MiniTest::Test

  def test_student_name
    new_student = Student.new('Bob', 'E33', true, 'Ruby')
    # new_student.name = 'Bob'
    assert_equal('Bob', new_student.name())
  end

  def test_cohort
    new_student = Student.new('Bob', 'E33', true, 'Ruby')
    assert_equal('E33', new_student.cohort())
  end

  def test_can_student_talk__true
    new_student = Student.new('Bob', 'E33', true, 'Ruby')
    assert_equal("I can talk!", new_student.talk())
  end

  def test_can_student_talk__false
    new_student = Student.new('Bob', 'E33', false, 'Ruby')
    assert_equal("I can't talk!", new_student.talk())
  end

  def test_say_favourite_language
    new_student = Student.new('Bob', 'E33', true, 'Ruby')
    assert_equal("I love Ruby", new_student.favourite_language())
  end







  #

end
