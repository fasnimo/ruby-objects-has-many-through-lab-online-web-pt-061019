class Patient
  attr_accessor :name, :doctor, :appointment
  @@all = []
  def initialize(name)
    @name = name
    @doctor = doctor
    @appointment = appointment
    @@all << self
  end

  def new_appointment(patient, date)
    patients = Patient.new(date, appointment, self)
    date = Appointment.new(date, self, patient)
    self.new_appointment
  end
  
  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end


end
