# frozen_string_literal: true

require_relative "ToDoList/version"

module ToDoList
  class Error < StandardError; end
  
  class ToDo
    attr_accessor :tasks

    def initialize
      @tasks = []
    end

    def add(task)
      @tasks << task
      "Task added: #{task}"
    end

    def remove(task)
      if @tasks.delete(task)
        "Task removed: #{task}"
      else 
        raise Error, "Task not found: #{task}"
      end
    end

    def list
      @tasks
    end
  end
end
