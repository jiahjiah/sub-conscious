//
//  AllSubscriptionList.swift
//  sub-conscious
//
//  Created by HDSB on 2022-07-27.
//

import SwiftUI

struct AllSubscriptionList: View {
    @EnvironmentObject var subscriptionListVM: SubscriptionListViewModel
    var body: some View {
        VStack {
            HStack {
                //MARK: Header Title
                
                Text("All Subscriptions")
                    .bold()
                    .padding(.leading, 20)
                
                Spacer()
                
                //MARK: Header Link
                NavigationLink {
                     
                } label: {
                    HStack(spacing: 4) {
                        Text("Filter")
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                    .foregroundColor(Color.text)
                }
                .padding(.trailing, 50)
            }
            .padding(.top)
            
            //MARK: All Subscription List
            ForEach(subscriptionListVM.subscriptions) { subscription in
                SubscriptionRow(subscription: subscription)
                
                    .padding()
                    .frame(width: UIScreen.main.bounds.width / 1.1)
                    .background(Color.systemBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)

                Divider()
            }
        }
    }
}

struct AllSubscriptionList_Previews: PreviewProvider {
    static let subscriptionListVM: SubscriptionListViewModel = {
        let subscriptionListVM = SubscriptionListViewModel()
        subscriptionListVM.subscriptions = subscriptionListPreviewData
        return subscriptionListVM
    }()
    
    static var previews: some View {
        Group {
            AllSubscriptionList()
            AllSubscriptionList()
                .preferredColorScheme(.dark)
        }
        .environmentObject(subscriptionListVM)

    }
}
