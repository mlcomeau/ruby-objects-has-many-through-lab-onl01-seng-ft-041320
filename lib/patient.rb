class Patient
  attr_reader :name
  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment (date, doctor)
    new_appt = Appointment.new(date, self, doctor)
  end

  def appointments
    Apppointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    Appointment.all.select do |appt|
      if appt.patient == self
        appt.doctor
      end
    end
  end


end 
