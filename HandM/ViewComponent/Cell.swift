//
//  Cell.swift
//  HandM
//
//  Created by Александр Романцов on 06.11.2022.
//

import SwiftUI

struct Cell: View {
    var thing1 : Clothes
    var thing2 : Clothes
    var body: some View {
        HStack {
            CellCard(thing: thing1)
            CellCard(thing: thing2)
        }
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(thing1: Clothes(name: "test", nameModel: "test", article: "test", coust: 9999, color: .purple, image: "test"), thing2: Clothes(name: "test", nameModel: "test", article: "test", coust: 9999, color: .purple, image: "test"))
    }
}
