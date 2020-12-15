class Task

  @@count = 0

  attr_accessor :id
  def initialize
    @@count += 1
    @id = @@count
    return @id
  end
end

task1 = Task.new
task2 = Task.new
task3 = Task.new

puts task1.id
puts task2.id
puts task3.id