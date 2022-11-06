//
//  CellCard.swift
//  HandM
//
//  Created by Александр Романцов on 06.11.2022.
//

import SwiftUI

struct CellCard: View {
    var thing : Clothes
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(thing.name)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .frame(width: 90, alignment: .leading)
                Spacer()
            }
            Text(String(thing.coust))
                .frame(maxWidth: .infinity, alignment: .leading)
            Image(thing.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90)
        }
        .padding(.horizontal, 20)
        .frame(width: 160, height: 160)
        .background(Color(.purple))
        .cornerRadius(30)
        .shadow(color: Color(.purple).opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

struct CellCard_Previews: PreviewProvider {
    static var previews: some View {
        CellCard(thing: Clothes(name: "test", nameModel: "test", article: "test", coust: 9999, color: .purple, image: "test"))
    }
}
