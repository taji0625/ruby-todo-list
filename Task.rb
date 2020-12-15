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