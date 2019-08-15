require 'pry'
class Doctor 
  attr_accessor :name
  @@all = [] 
  
  def initialize(name) 
    @@all << self 
    @name = name 
  end 
  
  def self.all 
    @@all 
  end  
  
  def new_appointment(patient, date)
    binding.pry
    Appointment.new(self, patient, date)
  end 
  
  def appointments 
    #binding.pry
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end 
  end 
  
  def patients
    appointment.map do |appointment| 
      appointment.patients
    end 
  end 
end 