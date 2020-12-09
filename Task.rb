class Task
  
  @@count = 0

  attr_accessor :task, :id
  def initialize(task)
    @task = task
    @id = @@count += 1
  end
end

task1 = Task.new
task2 = Task.new
task3 = Task.new

puts task1.id
puts task2.id
puts task3.id