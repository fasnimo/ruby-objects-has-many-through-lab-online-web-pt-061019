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
    appointment = Appointment.new(date, self, patients)
    date = Appointment.new(self, appointment, patient)
    self.appointments.first
  end


end
