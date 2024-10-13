//
//  WelcomeView.swift
//  Chat IA
//
//  Created by Arian Large  on 28/08/24.
//

import SwiftUI

struct WelcomeView: View {
    
    
    var body: some View {
        VStack {
            Image("logo")
            Text("Bienvenido a Bit AI")
                .padding()
                .font(.title)
               // .fontWeight(.bold)
            
           Button("Iniciar Sesión") {
                
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(25)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
