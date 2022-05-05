import Foundation

struct CoffeeShop {
	var totalSales: Int
	var barista: Person
	init(totalSales: Int, barista: Person){
		self.totalSales = totalSales
		self.barista = barista
	}

	let menuNames: [String] = Coffee.allCases.map{ String($0.name) }
	let menuPrices: [Int] = Coffee.allCases.map{ Int($0.price) }
	lazy var menu = Array(zip(menuNames, menuPrices))

	var pickupTable: String = "" {
		didSet {
			print(pickupTable, "\n")
		}
	}
	
	mutating func order(_ coffee: Coffee, _ customersName: String) {
		totalSales += coffee.price
		print("order - 수익 : \(coffee.price), 매출액 : \(totalSales)")
		makeCoffee(coffee, customersName)
	}
	
	mutating func makeCoffee(_ coffee: Coffee, _ customersName: String) {
		print("바리스타 : \(barista.name), \(coffee.name)를 만듭니다.")
		let coffeeName: String = "\(customersName) 님의 \(coffee.name)가 준비되었습니다. 픽업대에서 가져가주세요."
		pickupTable = coffeeName
	}
}
