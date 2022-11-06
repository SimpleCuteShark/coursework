//
//  HorizontalCard.swift
//  HandM
//
//  Created by Александр Романцов on 06.11.2022.
//

import SwiftUI

struct HorizontalCard: View {
    var thing : Clothes
    
    var body: some View {
            VStack {
                HStack(alignment: .top) {
                    Text(thing.name)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 160, alignment: .leading)
                    Spacer()
                    Text(thing.article)
                }
                HStack{
                    Text(thing.nameModel)
                    Text(String(thing.coust))
                }
                Image(thing.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 210)
            }
            .padding(.top, 20)
            .padding(.horizontal, 20)
            .frame(width: 275, height: 275)
            .background(thing.color)
            .cornerRadius(30)
            .shadow(color: thing.color.opacity(0.3), radius: 20, x: 0, y: 10)
        }
}

struct HorizontalCard_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCard(thing: Clothes(name: "test", nameModel: "test", article: "test", coust: 9999, color: .purple, image: "test"))
    }
}
