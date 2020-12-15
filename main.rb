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

class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    puts "【追加】 [No.#{task.id}] #{task.title}:#{task.content}"
    @tasks << task
  end

  def info
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
    @tasks.each do |tas|
      puts "[No.#{tas.id}] #{tas.title}:#{tas.content}"
    end
    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end
end



task1 = Task.new(title: "洗濯", content: "7時半までに干し終える")
task2 = Task.new(title: "仕事", content: "9時〜18時")
task3 = Task.new(title: "買物", content: "卵, ヨーグルト")


todo = ToDo.new
todo.add(task1)
todo.add(task2)
todo.info