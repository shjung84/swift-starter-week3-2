import Foundation

var misterLee = Person(name:"misterLee", money: 10000)
//print("counts : \(Person.counts)")
var missKim = Person(name:"missKim", money: 20000)
//print("counts : \(Person.counts)")

var yagombucks = CoffeeShop(totalSales: 0, barista: misterLee)
//var yagombucks = CoffeeShop(money: 0, barista: misterLee)
// struct : money의 값이 복사되어 합산되지 않음.

//print("메뉴 : \(yagombucks.menu) \n")
print("메뉴 : \(yagombucks.menu) \n")

//missKim.buy(shop: &yagombucks, coffee: "아메리카노")
missKim.buy(shop: &yagombucks, coffee: .americano)
missKim.buy(shop: &yagombucks, coffee: .cafeLatte)
missKim.buy(shop: &yagombucks, coffee: .dolceLatte)
missKim.buy(shop: &yagombucks, coffee: .frappuccino)
missKim.buy(shop: &yagombucks, coffee: .frappuccino)


