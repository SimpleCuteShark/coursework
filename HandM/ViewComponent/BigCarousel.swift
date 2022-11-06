//
//  BigСarousel.swift
//  HandM
//
//  Created by Александр Романцов on 06.11.2022.
//

import SwiftUI

struct BigCarousel: View {
    var clothes : Array<Clothes>
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(0..<clothes.count) {i in
                        GeometryReader { geometry in
                            HorizontalCard(thing: clothes[i])
                                .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX - 30) / -20), axis: (x: 0, y: 10, z: 0))
                        }
                        .frame(width: 275, height: 275)
                    }
                }
                .padding(.horizontal, 30)
                 .padding(.bottom, 35)
            }
    }
}

struct BigCarousel_Previews: PreviewProvider {
    static var previews: some View {
        BigCarousel(clothes: getTestArray())
    }
}
