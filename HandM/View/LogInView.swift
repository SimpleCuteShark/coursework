//
//  LogInView.swift
//  HandM
//
//  Created by Александр Романцов on 14.10.2022.
//

import SwiftUI

struct LogInView: View {
    
    @EnvironmentObject var loginViewModel : LogInViewModel
    
    @State private var login : String = ""
    @State private var password : String = ""
    
    //self.loginViewModel.userButtonPressed(login: login, password: password)
    // self.loginViewModel.log_regButtonPressed()
    
    var body: some View {
        VStack {
            Image("icone")
            Text("Sign In").fontWeight(.heavy).font(.largeTitle).padding([.top, .bottom], 20)
            VStack(alignment: .leading){
                VStack(alignment: .leading) {
                    Text("Username").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                    HStack {
                        TextField("Enter Your Username", text: $login)
                        if login != "" {
                            Image("check").foregroundColor(Color.init(.label))
                        }
                        
                    }
                    Divider()
                }.padding(.bottom, 15)
                VStack(alignment: .leading) {
                    Text("Password").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                
                    SecureField("Enter Your Password", text: $password)
                      
                    Divider()
                }
                HStack {
                    Spacer()
                    Button(action: {
                    }) {
                        Text("Forget Passsword?").foregroundColor(Color.gray.opacity(0.5))
                    }
                }
            }.padding(.horizontal, 6)
            VStack {
                Button(action: {
                }) {
                    Text("Sign In").foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                    
                }.background(Color("bg")).clipShape(Capsule()).padding(.top,45)
               
            }
        }.padding()
    }
}


struct LogInView_Previews: PreviewProvider {
    
    static var previews: some View {
        LogInView()
    }
}

