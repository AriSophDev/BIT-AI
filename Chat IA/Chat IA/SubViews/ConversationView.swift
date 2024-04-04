//
//  ConversationView.swift
//  Chat IA
//
//  Created by Arian Sophia on 2/12/23.
//
import SwiftUI

struct ConversationView: View {
    @State var bottomPadding: Double = 160
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ScrollViewReader { scrollProxy in
            ScrollView {
                ForEach(viewModel.messages) { message in
                    TextMessage(message: message)
                        .padding(.bottom, viewModel.messages.last == message ? bottomPadding : 0)
                }
            }
            .onChange(of: viewModel.currentMessage) { message in
                withAnimation(.linear(duration: 0.5)) {
                    scrollProxy.scrollTo(message.id, anchor: .bottom)
                }
            }
        }
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView().environmentObject(ViewModel())
    }
}
