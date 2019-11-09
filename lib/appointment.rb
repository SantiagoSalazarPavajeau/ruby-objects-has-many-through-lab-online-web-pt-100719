class Appointment
  
  attr_accessor :date, :doctor, :patient
  
  @@all = []
  
  def initialize(name, patient, doctor)
    @name = name
    @doctor = doctor
    @patient = patient
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  # def artists
  #   Genre.all.select {|genre| genre.songs = 
  # end
  
  # def genres
    
  # end
end