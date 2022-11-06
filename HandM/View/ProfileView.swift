//
//  ProfileView.swift
//  HandM
//
//  Created by Александр Романцов on 06.11.2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack() {
            Spacer()
        VStack(spacing: 16) {
            HStack(spacing: 16) {
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 20, weight: .light, design: .default))
                    .imageScale(.large)
                    .frame(width: 32, height: 32)
            
                Text("Аккаунт")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .frame(width: 120, alignment: .leading)
            }
            HStack(spacing: 16) {
                Image(systemName: "creditcard")
                    .font(.system(size: 20, weight: .light, design: .default))
                    .imageScale(.large)
                    .frame(width: 32, height: 32)
            
                Text("Способ оплаты")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .frame(width: 120, alignment: .leading)
            }
            HStack(spacing: 16) {
                Image(systemName: "cart")
                    .font(.system(size: 20, weight: .light, design: .default))
                    .imageScale(.large)
                    .frame(width: 32, height: 32)
            
                Text("Корзина")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .frame(width: 120, alignment: .leading)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 300)
        .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(radius: 30)
        .padding(.horizontal, 30)
        .overlay(
            Image("icone")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .offset(y: -150)
        )
    }
        .padding(.bottom, 30)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
