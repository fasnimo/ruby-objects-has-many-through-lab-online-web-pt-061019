class Doctor
  attr_accessor :name, :appointments, :patients
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
    appointments = Appointment.new(date, self, patients)
    self.appointments.last
  end


end
