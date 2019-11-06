class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def mechanics_for_me
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map {|car| car.classification}.uniq
  end

end
