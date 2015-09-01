
require 'pry'
require 'pry-byebug'

class Renter

  attr_accessor :name, :credit_score, :salary
  def initialize(name,credit_score, salary)

    @name = name
    @credit_score = credit_score
    @salary = salary
  end

  def to_s
# if we don't define this, ruby would print the object ID when running it.
    "#{name} has a credit score of #{credit_score} and an annual salary of #{salary}"
  end

end
#renter= Renter.new("James",800,500000)
