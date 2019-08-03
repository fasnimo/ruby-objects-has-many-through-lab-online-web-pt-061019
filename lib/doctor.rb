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
    patients = Appointment.new(date, self, patients)
    date = .new(self, appointment, patients)
    self.appointments
  end


end
