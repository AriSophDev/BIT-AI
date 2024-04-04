//
//  TextMessage.swift
//  Chat IA
//
//  Created by Arian Sophia on 2/12/23.
//

import SwiftUI
import SwiftOpenAI

struct TextMessage: View {
    var message: MessageChatGPT
    
    var body: some View {
        if message.role == .user {
            Text(message.text)
                .multilineTextAlignment(.trailing)
                .foregroundColor(.white)
                .padding(.all, 10)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(.blue)
                )
                .frame(maxWidth: .infinity, alignment: .trailing)
        } else {
            Text(message.text)
                .multilineTextAlignment(.leading)
                .padding(.vertical, 10)
                .padding(.horizontal, 12)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.gray)
                )
                .frame(maxWidth: .infinity, alignment: .leading)

        }
    }
    
    
    struct TextMessage_Previews: PreviewProvider {
        static let chatGPTMessage: MessageChatGPT = .init(text: "Hola Soy Bit, será un gusto ayudarte", role: .system)
        static let myMessage: MessageChatGPT = .init(text: "Lista para mejorar calificaciones" , role: .user	)
        
        static var previews: some View {
            Group{
                TextMessage(message: self.chatGPTMessage)
                TextMessage(message: self.myMessage)
            }
            
        }
    }
    
}
