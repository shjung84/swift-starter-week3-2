import Foundation

struct CoffeeShop {
	var totalSales: Int
	var barista: Person
	let menuNames: [String] = Coffee.allCases.map{ String($0.name) }
	let menuPrices: [Int] = Coffee.allCases.map{ Int($0.price) }
	lazy var menu = Array(zip(menuNames, menuPrices))
	
	init(totalSales: Int, barista: Person){
		self.totalSales = totalSales
		self.barista = barista
	}
	
	var pickupTable: (Coffee: Coffee, Person: Person)? {
		didSet {
			if let customersName = pickupTable {
				print("\(customersName.Person.name)님의 \(customersName.Coffee.name) 준비되었습니다. 픽업대에서 가져가주세요. \n")
			}
		}
	}
	mutating func order(_ coffee: Coffee, _ customersName: Person) {
		totalSales += coffee.price
		print("order - 수익 : \(coffee.price), 매출액 : \(totalSales)")
		makeCoffee(coffee, customersName)
	}
	mutating func makeCoffee(_ coffee: Coffee, _ customersName: Person) {
		print("바리스타 : \(barista.name), \(coffee.name)를 만듭니다.")
		pickupTable = (Coffee: coffee, Person: customersName)
	}
}
