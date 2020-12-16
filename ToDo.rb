class ToDo

  def initialize
    @tasks = []
  end

  def add(task)
    puts "【追加】#{task.info}"
    
    @tasks << task
  end

  def info
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
    @tasks.each do |task|
      puts "#{task.info}"
    end
    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end

  def delete(delete_task)
    if @tasks.include?(delete_task)
      puts "【削除】#{delete_task.info}"
      @tasks.delete(delete_task)
    else
      puts "【！】 該当idのタスクはありません。"
    end
  end
  
end