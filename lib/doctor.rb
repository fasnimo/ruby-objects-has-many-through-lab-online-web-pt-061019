class Doctor
  attr_accessor :name, :patients, :appointments
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

  def new_appointment(date, patients)
    patients = Appointment.new(date, self, patients)
    date = Patient.new(self, appointments, patients)
    self.appointment
  end


end
