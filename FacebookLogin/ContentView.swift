//
//  ContentView.swift
//  FacebookLogin
//
//  Created by User on 18/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack{
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer().frame(width: 284, height: 64)
                
                VStack{
                    TextField("Email", text: $email)
                        .padding(.top, 24)
                        .padding(.bottom, 12)
                        .padding(.horizontal)
                    Divider()
                    SecureField("Senha", text: $password)
                        .padding(.top, 12)
                        .padding(.bottom, 24)
                        .padding(.horizontal)
                }.background(Color.white)
                    .cornerRadius(4.0)
                
                Spacer().frame(height:16)
                
                Button(action: {}){
                    Text("Login")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(Color("ButtonColor"))
                        .cornerRadius(4.0)
                }
                Spacer().frame(height:64)
                
               
                
                VStack(spacing: 8){
                    Button(action: {}){
                Text("Nao tem uma conta? Criar conta.")
                            .foregroundColor(.white)
                            .bold()
                    }
                    Button(action: {}){
                Text("Esqueceu sua senha?")
                            .foregroundColor(Color("TextColor"))
                            .bold()
                    }
                }
                
               
                    
                
                
                
            }.padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
