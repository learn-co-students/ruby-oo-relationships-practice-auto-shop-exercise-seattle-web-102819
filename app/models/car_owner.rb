class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.all.select {|car| car.car_owner == self}
  end

  def mechanics
    self.cars.map {|car| car.mechanic}.uniq
  end

  def self.avg_cars
    Car.all.length.to_f / @@all.length.to_f
  end

  def self.all
    @@all
  end


end
