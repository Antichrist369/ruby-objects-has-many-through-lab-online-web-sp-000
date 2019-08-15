require 'pry'
class Appointment 
  attr_accessor :doctor, :patient, :date 
  @@all = [] 
  
  def initialize(date, patient, doctor)
    @doctor = doctor
    @patient = patient
    @date = date 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def patients 
    self.patient
  end 
  
  def doctors 
    self.doctor 
  end 
end 