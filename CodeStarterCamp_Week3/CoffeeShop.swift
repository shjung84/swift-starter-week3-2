import Foundation

class CoffeeShop {
	var menu: [String] = Coffee.allCases.map{ String($0.fetchName()) }
//	let menu = Coffee.allCases
//	let menu = Coffee.allCases.map{ "\($0.fetchName())" }.joined(separator: ", ")
//	var menu: [String : Int] = Coffee.allCases.map{ String($0.fetchName(), Int($0.price) }
	
//	var total: Int = 0
	var sales: Int
//	{
//		get {
//			return total
//		}
//		set {
//			total += newValue
//		}
//	}
	
	var pickupTable: String?
	var barista: Person
	init(money: Int, pickupTable: String, barista: Person){
		self.sales = money
		self.barista = barista
		self.pickupTable = pickupTable
	}
		
	/*
	 var sales: Int {
		didSet { print("매출 : \(sales)") }
	}
	*/
	
	 func order(_ coffee: Coffee) {
		 sales += coffee.price
		 //Left side of mutating operator isn't mutable: 'self' is immutable
		print("order - 수익 : \(coffee.price), 매출액 : \(sales)")
		makeCoffee(coffee)
	}
	
	func makeCoffee(_ coffee: Coffee) {
		print("바리스타 : \(barista.name), \(coffee.fetchName())를 만듭니다.")
		let msg = "missKim 님의 \(coffee.fetchName())가 준비되었습니다. 픽업대에서 가져가주세요."
		print(msg, "\n")
	}
}
