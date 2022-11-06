//
//  ClothesModel.swift
//  HandM
//
//  Created by Александр Романцов on 06.11.2022.
//

import Foundation
import SwiftUI

struct Clothes {
    var name : String
    var nameModel : String
    var article : String
    var coust : Int
    var color : Color
    var image : String
    
}

func getTestArray() -> Array<Clothes> {
    let result : Array<Clothes> = [Clothes(name: "Skechers", nameModel: "Arch Fit Lea", article: "PWZY00KU1Q", coust: 5599, color: .purple, image: "test"), Clothes(name: "FILA", nameModel: "Virginia", article: "STE8NGLIRT", coust: 6999, color: .purple, image: "test1"), Clothes(name: "Demix", nameModel: "Demix Cinzia 3", article: "L8VN1OWZ1C", coust: 5999, color: .purple, image: "test2"), Clothes(name: "Reebok", nameModel: "Royal Glide Ripple Clip", article: "AYPWYJSZD6", coust: 5199, color: .purple, image: "test3"), Clothes(name: "Demix", nameModel: "Cinzia 3 Lea", article: "9QS4FOMOM8", coust: 3839, color: .purple, image: "test4")]
    
    return result
}
