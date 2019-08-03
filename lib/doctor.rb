class Doctor
  attr_accessor :name, :appointments, :patient
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
    appointments = Appointment.new(appointments, self, patients)
    self.appointments.last
  end


end
