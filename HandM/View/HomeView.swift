//
//  HomeView.swift
//  HandM
//
//  Created by Александр Романцов on 06.11.2022.
//

import SwiftUI

struct HomeView: View {
    @State var showProfile = false
    var testing = getTestArray()
    
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.all)
            
        VStack{
            
            CastomNavigationView(showProfile: $showProfile)
            
            ScrollView(showsIndicators: false) {
                Text("Наши рекомендации")
                BigCarousel(clothes: getTestArray())
                
                Text("Скидки")
                SmallCarousel(clothes: getTestArray())
                
                Text("В центре внимания")
                ForEach(0..<5) {i in
                    VStack {
                        Cell(thing1: testing[i], thing2: testing[i])
                        Spacer()
                            .frame(height: 20)
                    }
                }
                
            }
            
            Spacer()
            
            }
        .padding(.top, 15)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
        .edgesIgnoringSafeArea(.all)
        .offset(y: showProfile ? -450 : 0)
        .rotation3DEffect(Angle(degrees: showProfile ? -10 : 0), axis: (x: 10, y: 0, z: 0))
        .scaleEffect(showProfile ? 0.9 : 1)
        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            
            
            ProfileView()
                .background(Color.black.opacity(0.0001))
                .offset(y: showProfile ? 0 : 600)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.showProfile.toggle()
                }
    }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.portrait)
    }
}
