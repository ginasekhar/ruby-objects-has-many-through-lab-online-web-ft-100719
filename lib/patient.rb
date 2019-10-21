class Patient 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end #initialize
  
  
  def appointments
    Appointment.all.select { |appt| appt.patient == self}
  end #appointments
  
  def new_appointment(doctor, date)
    Appointment.new (date, self, doctor)
  end #new_appointment
  
  def self.all
    @@all
  end #all 
  
end #patient