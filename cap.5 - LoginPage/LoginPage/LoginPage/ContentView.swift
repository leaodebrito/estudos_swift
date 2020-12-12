//
//  ContentView.swift
//  LoginPage
//
//  Created by Bruno Brito on 22/11/20.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

let storedUsername = "Myusername"
let storedPassword = "Mypassword"


struct ContentView: View {
    
    @State var userName = ""
    @State var password = ""
    
    @State var authenticationdidFail: Bool = false
    @State var autheticationDidSucceed: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
                WelcomeText()
                UserImage()
                UsernameTextField(username: $userName)
                PasswordSecureField(password: $password)
                
                if authenticationdidFail {
                    Text("Information not correct. Try Again.")
                        .foregroundColor(.red)
                        .offset(y: -10)
                }
                
                Button(action:{
                    if self.userName == storedUsername && self.password == storedPassword {
                        self.autheticationDidSucceed = true
                    }else{
                        self.authenticationdidFail = true
                    }
                }) {
                    LoginButtonContent()
                }
                
                
            }
            .padding()
            if autheticationDidSucceed{
                Text("Login Succcessful!")
                    .font(.headline)
                    .frame(width: 250, height: 80, alignment:.center)
                    .background(Color.green)
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    .animation(Animation.default)
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Main view Structures

struct WelcomeText: View {
    var body: some View {
        Text("Welcome")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}


struct UserImage: View{
    
    var body: some View{
        Image("ironMan")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}


struct LoginButtonContent: View{
    var body: some View{
        Text("Login")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}

struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("User Name", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

