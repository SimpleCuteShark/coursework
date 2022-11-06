//
//  CastomNavigationView.swift
//  HandM
//
//  Created by Александр Романцов on 06.11.2022.
//

import SwiftUI

struct CastomNavigationView: View {
    @Binding var showProfile : Bool
    
    var body: some View {
        HStack {
            Button(action: {
                self.showProfile.toggle()
            }) {
                Image("icone")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 30)
    }
}
