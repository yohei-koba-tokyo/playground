class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end

class Student < Person
  def introduce
    puts "私は#{@name}です。歳は#{@age}です。"
  end
end

rabuko = Student.new("rabuko", 36)
yohei = Student.new("yoheikobayashi", 37)
puts yohei.introduce
puts rabuko.introduce

