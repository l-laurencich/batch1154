require "sqlite3"
DB = SQLite3::Database.new("tasks.db")
DB.results_as_hash = true
require_relative "task"

def display(task)
  puts "ID: #{task.id} - TITLE: #{task.title}- DESCRIPTION: #{task.description} DONE: #{task.done ? "[x]" : "[ ]"}"
end

#1. Implement the READ logic to find a given task (by its id)
puts "------------1.-------------"
task = Task.find(1)
display(task)

# 2. Implement the CREATE logic in a save instance method
puts "------------2.-------------"
task = Task.new(title: "Enjoy the weekend", description: "do something crazy")
task.save
display(task)


# 3. Implement the UPDATE logic in the same method
puts "------------3.-------------"
task = Task.find(1)
task.done = true
task.save
task = Task.find(1)
display(task)


# 4. Implement the READ logic to retrieve all tasks (what type of method is it?)
puts "------------4.-------------"
tasks = Task.all
tasks.each do |task|
  display(task)
end

# 5. Implement the DESTROY logic on a task
puts "------------5.-------------"
task = Task.find(3)
task.destroy if task
puts Task.find(3) == nil
