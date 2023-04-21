require 'sqlite3'
DB = SQLite3::Database.new('patients_doctors.sqlite')


class Doctor
  attr_accessor :id, :name

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    ## ...
  end

  def save

  end

  def self.all
    DB.results_as_hash = true
    results = DB.execute('SELECT * FROM doctors')

    results.each do |doctor_hash|
      Doctor.new(doctor_hash)
    end
  end

end

# donald = Doctor.new(name: 'donald')
# donald.save
# p donald.id

Doctor.all # -> all the doctors as instances
