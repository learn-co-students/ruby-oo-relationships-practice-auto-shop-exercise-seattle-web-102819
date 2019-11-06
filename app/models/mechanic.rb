class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end
  
  def cars_i_service
    Car.all.select {|car| car.mechanic == self}
  end

  def owners_i_work_with
    self.cars_i_service.map {|car| car.car_owner}.uniq
  end

  def names_of_owners_i_work_with
    self.cars_i_service.map {|car| car.car_owner.name}.uniq
  end

  def self.all
    @@all
  end

end
