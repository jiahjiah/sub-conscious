//
//  ContentView.swift
//  sub-conscious
//
//  Created by HDSB on 2022-07-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                AnalyticsView()
                    .tabItem {
                        Image(systemName: "chart.line.uptrend.xyaxis")
                    }
                RecommendationView()
                    .tabItem {
                        Image(systemName: "lightbulb")
                    }
                ArchiveView()
                    .tabItem {
                        Image(systemName: "folder.fill")
                    }
            
            }
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
                .previewInterfaceOrientation(.portrait)
            ContentView()
                .preferredColorScheme(.dark)
        }
        .environmentObject(subscriptionListVM)
    }
}
