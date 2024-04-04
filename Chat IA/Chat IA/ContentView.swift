//
//  ContentView.swift
//  Chat IA
//
//  Created by Arian Sophia on 2/12/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State var prompt : String = "Dame una lista de ingredientes"
    
    
    var body: some View {
        VStack {
            ConversationView()
                .environmentObject(viewModel)
                .padding(.horizontal, 12)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            HStack{
                TextField("Escribe la pregunta a Bit",
                text: $prompt,
                axis: .vertical)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(25)
                .lineLimit(6)
                
                Button {
                    Task {
                        await viewModel.send(message: prompt)
                    }
                } label: {
                    Image(systemName: "paperplane")
                        .foregroundColor(Color.white)
                        .frame(width: 44, height: 44)
                        .background(Color.blue)
                        .cornerRadius(22)
                }
                .padding(.leading, 8)
                
            }
            
            
        }
        .padding(.leading, 8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
