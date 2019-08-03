class Doctor
  attr_accessor :name,:date, :appointments, :patient
  @@all = []
  def initialize(name)
    @name = name
    @patient = patient
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

  def new_appointment(date, patients)
    patient = Appointment.new(date, self, patient)
    date = Patient.new(self, appointments, patient)
    self.appointment
  end


end
