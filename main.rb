class Task

  attr_accessor :id, :title, :content
  @@count = 0

  def initialize(title:, content:)
    @@count += 1
    @id = @@count
    @title = title
    @content = content
  end

  def info
    puts "[No.#{@id}] #{@title}:#{@content}"
  end
end

# task1 = Task.new
# task2 = Task.new
# task3 = Task.new

task1 = Task.new(title: "洗濯", content: "7時半までに干し終える")
task2 = Task.new(title: "仕事", content: "9時〜18時")
task3 = Task.new(title: "買物", content: "卵, ヨーグルト")

puts task1.info
puts task2.info
puts task3.info