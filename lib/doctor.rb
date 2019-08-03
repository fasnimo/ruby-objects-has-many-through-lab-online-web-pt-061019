class Doctor
  attr_accessor :name, :patient, :appointment
  @@all = []
  def initialize(name)
    @name = name
    @patients = patients
    @appointments = appointments
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appoint|
      appoint.doctor == self
    end
  end

  def new_appointment(patient, date, appointment)
    patient = Patient.new(date, appointment, self)
    date = Appointment.new(date, self, patient)
    self.new_appointment
  end


end
