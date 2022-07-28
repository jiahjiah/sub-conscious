//
//  sub_consciousApp.swift
//  sub-conscious
//
//  Created by HDSB on 2022-07-26.
//

import SwiftUI

@main
struct sub_consciousApp: App {
    @State var transactionistVM = SubscriptionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionistVM)
        }
    }
}
