import Foundation

struct Person {
	let name: String
	var money: Int
	
	mutating func buy(shop: inout CoffeeShop, coffee: Coffee) {
		print("[고객 : 주문전] 주문자 : \(name) , 주문 : \(coffee.name), 커피가격 : \(coffee.price), 잔액 : \(money)")
		if money < coffee.price {
			print("잔액이 \(coffee.price - money)원만큼 부족합니다.")
		} else {
			money -= coffee.price
			print("[고객 : 주문후] 잔액 : \(money)")
			shop.order(coffee, self)
		}
	}
}
