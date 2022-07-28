//
//  ContentView.swift
//  sub-conscious
//
//  Created by HDSB on 2022-07-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    //MARK: Title
                    Text("July")
                        .font(.title2)
                        .bold()
                    
                    //MARK: TransactionList
                    AllSubscriptionList()
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                //MARK: Notification Icon
                ToolbarItem {
                    Image(systemName: "person.circle.fill")
                        .renderingMode(.original)
                        .foregroundStyle(Color.icon, .primary)
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static let subscriptionListVM: SubscriptionListViewModel = {
        let subscriptionListVM = SubscriptionListViewModel()
        subscriptionListVM.subscriptions = subscriptionListPreviewData
        return subscriptionListVM
    }()
    
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
        .environmentObject(subscriptionListVM)
    }
}
