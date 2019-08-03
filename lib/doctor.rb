class Doctor
  attr_accessor :name, :patient, :appointment
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

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end


end
