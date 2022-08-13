//
//  CombinedHomeView.swift
//  sub-conscious
//
//  Created by HDSB on 2022-08-01.
//

import SwiftUI

struct CombinedHomeView: View {
    @State var show = false
    
    var body: some View {
        
        ZStack {
            HomeView()
                .onTapGesture {
                    withAnimation {
                        show.toggle()
                    }
                }
            
            if show {
                newSubscriptionView(show: $show)
                    .transition(.move(edge: .bottom))
                    .zIndex(1)
            }
        }
        
        
    }
}

struct CombinedHomeView_Previews: PreviewProvider {
    static var previews: some View {
        CombinedHomeView()
    }
}
