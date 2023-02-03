class Task
  attr_reader :id, :title, :description
  attr_accessor :done
  def initialize(attr = {})
      @id = attr[:id]
      @title = attr[:title]
      @description = attr[:description]
      @done = attr[:done] == 1 
  end
  
  def self.find(id)
    result = DB.execute('SELECT * FROM tasks WHERE id = ?', id).first
    if result.nil?
      return nil
    else
      attri = {id: result["id"], title: result["title"], description: result["description"], done: result["done"]}
      Task.new(attri)
    end
  end

  def self.all
    rows = DB.execute("SELECT * FROM tasks")
    rows.map do |row|
      Task.new(id: row["id"], title: row["title"], description: row["description"], done: row["done"] )
    end
  end

  def save
    if @id.nil?
      result = DB.execute("INSERT INTO tasks (title, description, done) VALUES (?, ?, ?)", @title, @description, @done ? 1 : 0)
      @id = DB.last_insert_row_id
    else
      result = DB.execute("UPDATE tasks SET title = ?, description = ?, done = ? WHERE id = ?", @title, @description, @done ? 1 : 0, @id)
    end
  end

  def destroy
    DB.execute("DELETE FROM tasks WHERE id = ?", @id)
  end  
end