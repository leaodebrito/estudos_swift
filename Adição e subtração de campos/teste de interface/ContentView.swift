//
//  ContentView.swift
//  teste de interface
//
//  Created by Bruno Brito on 08/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var teste01: String
    @State var teste02: String
    @State var teste03: String
    @State var teste04: String
    
    @State var showTextField: Bool = false
    
    //mudança de texto na interface depois do cálculo de pré-dimensionamento
    @State var changeValues: Bool = true
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("teste01", text: $teste01)
                    .frame(width: 165, height: 40)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.center)
                
                if showTextField {
                    TextField("teste02", text: $teste02)
                        .frame(width: 165, height: 40)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .multilineTextAlignment(.center)
                    
                    TextField("teste03", text: $teste03)
                        .frame(width: 165, height: 40)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .multilineTextAlignment(.center)
                    
                    TextField("teste04", text: $teste04)
                        .frame(width: 165, height: 40)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .multilineTextAlignment(.center)
                    
                }
                
                HStack{
                    Button(action:{
                        print("apertaram o botão")
                        showTextField = changeValues ? true : false
                        
                        //permite diminuir e aumentar a lista de TextFields com o mesmo botão
                        //toggle() -> Use this method to toggle a Boolean value from true to false or from false to true
                        self.changeValues.toggle()
                        
                    }) {
                        LoginButtonContent(name: changeValues ? "mais" : "menos")
                    }
                    
//                    Button(action:{
//                        print("apertaram o botão")
//                        showTextField = false
//                    }) {
//                        LoginButtonContent(name: "menos campos")
//                    }
                }
   
                
            }
            .multilineTextAlignment(.center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(teste01: "", teste02: "", teste03: "", teste04: "")
    }
}


struct LoginButtonContent: View{
    
    var name: String
    
    var body: some View{
        Text(name)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}
