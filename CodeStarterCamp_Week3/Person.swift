import Foundation

struct Person {
	let name: String
	var money: Int
	
	mutating func buy(shop: CoffeeShop, coffee: Coffee) {
		print("before - 주문자: \(name) , 주문 : \(coffee.fetchName()), 커피가격: \(coffee.price), 잔액: \(money)")

		if money < coffee.price {
			print("잔액이 \(coffee.price - money) 원만큼 부족합니다. ")
		} else {
			money -= coffee.price
			print("after - 주문자: \(name) , 주문 : \(coffee.fetchName()), 커피가격: \(coffee.price), 잔액: \(money)")
			
			shop.order(coffee)
			//Cannot use mutating member on immutable value: 'shop' is a 'let' constant
		}
	}
}
