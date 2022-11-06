//
//  SmallHorizontalCard.swift
//  HandM
//
//  Created by Александр Романцов on 06.11.2022.
//

import SwiftUI

struct SmallHorizontalCard: View {
    var thing : Clothes
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(thing.name)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .frame(alignment: .leading)
                Spacer()
                Text(thing.nameModel)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
            }
            HStack {
                Text(thing.article)
                    .frame(alignment: .leading)
                Text(String(thing.coust))
                    .foregroundColor(.red)
            }
        }
        .padding(.horizontal, 20)
        .frame(width: 275, height: 80)
        .background(thing.color)
        .cornerRadius(30)
        .shadow(color: thing.color.opacity(0.3), radius: 20, x: 0, y: 5)

    }
}

struct SmallHorizontalCard_Previews: PreviewProvider {
    static var previews: some View {
        SmallHorizontalCard(thing: Clothes(name: "test", nameModel: "test", article: "test", coust: 9999, color: .purple, image: "test"))
    }
}
