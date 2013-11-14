require 'minitest/model'
require 'minitest/autorun'

require 'ostruct'
require 'active_model'
class Person < OpenStruct
  include ActiveModel::Validations

  validates_presence_of :name, :email
end

class PersonTest < MiniTest::Unit::TestCase
  include MiniTest::Model

  def setup
    @person = Person.new
  end

  def test_invalid
    refute_valid @person
  end

  def test_valid
    @person.name  = "Jerry"
    @person.email = "jerry@example.com"
    assert_valid @person
  end

  def test_requires_name
    refute_valid @person, :name
    @person.name = "Jerry"
    assert_valid @person, :name
  end
end
