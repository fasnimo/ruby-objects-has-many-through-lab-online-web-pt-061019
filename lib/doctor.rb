class Doctor
  attr_accessor :name,:date, :appointments, :patient
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

  def new_appointment(date, patient)
    appointments = Appointment.new(date, self, patient)
    date = Appointment.new(self, appointment, patient)
    self.appointments
  end


end
