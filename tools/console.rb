require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car_owner_1 = CarOwner.new ("Car_Owner_1")
car_owner_2 = CarOwner.new ("Car_Owner_2")
car_owner_3 = CarOwner.new ("Car_Owner_3")
car_owner_4 = CarOwner.new ("Car_Owner_4")

mechanic_1 = Mechanic.new("Mechanic_1", "Classification_1")
mechanic_2 = Mechanic.new("Mechanic_2", "Classification_2")
mechanic_3 = Mechanic.new("Mechanic_3", "Classification_3")
mechanic_4 = Mechanic.new("Mechanic_4", "Classification_4")
mechanic_5 = Mechanic.new("Mechanic_5", "Classification_4")

car_1 = Car.new("Make_1", "Model_1", "Classification_1", car_owner_1, mechanic_1)
car_2 = Car.new("Make_2", "Model_2", "Classification_2", car_owner_1, mechanic_2)
car_3 = Car.new("Make_3", "Model_3", "Classification_2", car_owner_2, mechanic_2)
car_4 = Car.new("Make_4", "Model_4", "Classification_3", car_owner_3, mechanic_3)
car_5 = Car.new("Make_5", "Model_5", "Classification_4", car_owner_4, mechanic_4)



binding.pry
