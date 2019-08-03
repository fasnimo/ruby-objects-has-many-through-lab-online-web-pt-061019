class Patient
  attr_accessor :name, :doctor, :appointment
  @@all = []
  def initialize(name, doctor, appointment)
    @name = name
    @doctor = doctor
    @appointment = appointment
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end


end
