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

  def new_appointment(patients, date, appointmentss)
    patients = Patient.new(date, appointments, self)
    date = Appointment.new(self, appointments, patients)
    self.appointment
  end


end
