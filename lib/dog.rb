require_relative "../config/environment.rb"

class Dog 
  
  attr_accessor :name, :breed 
  attr_reader :id 
  
  def initialize(name, breed)
    # self.id = id
    self.name = name
    self.breed = breed 
  end
  
  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS dos (
      id INTEGER PRIMARY KEY,
      name TEXT,
      breed TEXT
    )
    SQL

    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = "DROP TABLE IF EXISTS dogs"
    DB[:conn].execute(sql)
  end

end