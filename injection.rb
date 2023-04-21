require 'sqlite3'
DB = SQLite3::Database.new('patients_doctors.sqlite')

puts '-----------------------------------------------'
puts '-- Welcome To The AMAZING Hospital interface --'
puts '-----------------------------------------------'

puts 'Input the first name of the doctor you want to add'
print '>'
first_name = gets.chomp

puts 'Input the last name of the doctor you want to add'
print '>'
last_name = gets.chomp

puts 'Which Specialty?'
print '>'
specialty = gets.chomp

query = <<~SQL
  INSERT INTO doctors (first_name, last_name, specialty)
  VALUES (?, ?, ?)
SQL
# puts query

DB.execute(query, first_name, last_name, specialty)

puts 'Entry has been added to the database'

# Malicious code
# Neurology"); DROP TABLE IF EXISTS doctors; --
