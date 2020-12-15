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
    @tasks.each do |task|
      puts "[No.#{task.id}] #{task.title}:#{task.content}"
    end
    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end

  def delete(delete_task)
    if @tasks.include?(delete_task)
      puts "【削除】 [No.#{delete_task.id}] #{delete_task.title}:#{delete_task.content}"
      @tasks.delete(delete_task)
    else
      puts "【！】 該当idのタスクはありません。"
    end
  end
  
end