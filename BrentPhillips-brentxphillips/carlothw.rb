

def show_cars(cars)
  cars.each do |cars|
    puts "this is a car #{cars[:brand]}"
    puts "this car is good for the environemt" if cars[:electric] ==true
  end
end


tesla = {brand: "Tesla", color: "red", year: "2014", price: "13000", electric: true}
vw = {brand: "VW", color: "white", year: "2015", price: "11000", electric: false}
kia = {brand: "Kia", color: "black", year: "2013", price: "18000", electric: false}
ford = {brand: "Ford", color: "yellow", year: "2012", price: "17000", electric: false}

cars = []
cars.push(tesla,vw,kia,ford)
show_cars(cars)
