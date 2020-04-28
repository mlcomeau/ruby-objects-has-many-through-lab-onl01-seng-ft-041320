class Doctor
  attr_reader :name 
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
  end 

  def self.all 
    @@all 
  end 

  def new_appointment(date, patient)
    new_appointment = Apoointment.new(date, patient, self)
  end 

  def appointments 
    Apppointment.all.select {|appt| appt.doctor == self}
  end 

  def patients 
    Apppointment.all.select do |appt|
      if appt.doctor == self 
        appt.patient
      end
    end
  end
  
    
end
