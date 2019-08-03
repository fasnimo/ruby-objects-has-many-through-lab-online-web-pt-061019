class Doctor
  attr_accessor :name,:date, :appointments, :patients
  @@all = []
  def initialize(name)
    @name = name
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
    patient = Appointment.new(date, self, patients)
    date = .new(self, appointments, patients)
    self.appointment
  end


end
