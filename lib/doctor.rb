class Doctor
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end #initialize
  
  def appointments
    Appointment.all.select{ |appt| appt.doctor == self}
  end #appointments
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end #new_appointment
  
  def patients
    all_my_patients = []
    Appointment.all.select do |appt| 
      if appt.doctor == self
        all_my_patients << appt.patient
      end #if
    end# do
    all_my_patients
    
  end #patients
  
  def self.all
    @@all
  end # all
  
end
  