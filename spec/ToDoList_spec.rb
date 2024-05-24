require 'ToDoList'

RSpec.describe ToDoList::ToDo do
  it "adds a task" do
    todo = ToDoList::ToDo.new
    expect(todo.add("Learn Ruby")).to eq("Task added: Learn Ruby")
    expect(todo.list).to include("Learn Ruby")
  end

  it "lists tasks" do
    todo = ToDoList::ToDo.new
    todo.add("Learn Ruby")
    expect(todo.list).to eq(["Learn Ruby"])
  end

  it "removes a task" do
    todo = ToDoList::ToDo.new
    todo.add("Learn Ruby")
    expect(todo.remove("Learn Ruby")).to eq("Task removed: Learn Ruby")
    expect(todo.list).to be_empty
  end

  it "handles removing a non-existent task" do
    todo = ToDoList::ToDo.new
    expect { todo.remove("Non-existent Task") }.to raise_error(ToDoList::Error, "Task not found: Non-existent Task")
  end
end
