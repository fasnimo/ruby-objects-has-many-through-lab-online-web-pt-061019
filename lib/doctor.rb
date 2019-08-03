class Doctor
  attr_accessor :name, :patients, :appointments
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

  def new_appointment(patient, date, appointmentss)
    patients = .new(date, self, patients)
    date = .new(self, appointments, patients)
    self.appointment
  end


end
