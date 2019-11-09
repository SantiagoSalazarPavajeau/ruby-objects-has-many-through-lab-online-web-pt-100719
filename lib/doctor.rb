class Doctor
  
  attr_accessor :name, :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    #@songs = []
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Song.all.select {|song| song.artist == self}
  end
  
  def new_appointment(date, patient)
    appointment = Appointment.new(date, self, patient)
    self.appointments = appointment
  end
  
  # Iterates over artist's songs
  # Collects genre of each song
  def patients
    appointments.map {|appointment| appointment.patient}
  end

  
end