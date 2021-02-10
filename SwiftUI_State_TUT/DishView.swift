

import Foundation
import SwiftUI
 
struct Dish: Identifiable {
    
    //Dish를 구별하기 위해 고유 ID를 저장해줌
    let id = UUID()
    let name : String
    let price : Double
    let imageURL : String
    let isSpicy: Bool
}

extension Dish {
    static func all() -> [Dish] {
        return [
            
            Dish(name: "김치", price: 10000, imageURL: "Kimchi", isSpicy: true),
            Dish(name: "스파게티", price: 8500, imageURL: "Spagetti", isSpicy: true),
            Dish(name: "토스트", price: 3000, imageURL: "Toast", isSpicy: false),
            Dish(name: "초밥", price: 12000, imageURL: "SuShi", isSpicy: false),
            Dish(name: "스테이크", price: 25000, imageURL: "Steak", isSpicy: false),
            Dish(name: "치킨", price: 17000, imageURL: "Chicken", isSpicy: true)
            
        ]
    }
}
