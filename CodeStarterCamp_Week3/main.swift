import Foundation

var misterLee = Person(name:"misterLee", money: 10000)
var missKim = Person(name:"missKim", money: 20000)
var Jessi = Person(name:"Jessi", money: 20000)
var yagombucks = CoffeeShop(totalSales: 0, barista: misterLee)

print("메뉴 : \(yagombucks.menu) \n")

missKim.buy(shop: &yagombucks, coffee: .americano)
missKim.buy(shop: &yagombucks, coffee: .americano)
Jessi.buy(shop: &yagombucks, coffee: .cafeLatte)
Jessi.buy(shop: &yagombucks, coffee: .cafeLatte)
missKim.buy(shop: &yagombucks, coffee: .dolceLatte)
Jessi.buy(shop: &yagombucks, coffee: .frappuccino)
