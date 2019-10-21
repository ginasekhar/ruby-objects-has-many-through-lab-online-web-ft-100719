class Doctor
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def appointments
    Appointment.all.select{ |appt| appt.doctor == self}
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def patients
    all_my_patients = []
    Appointment.all.select do |appt| 
      if appt.doctor == self
        all_my_patients << appt.patient
      end
    end
    all_my_patients
    
  end
  
  def self.all
    @@all
  end
end
  