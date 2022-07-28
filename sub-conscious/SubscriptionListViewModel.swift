//
//  SubscriptionListViewModel.swift
//  sub-conscious
//
//  Created by HDSB on 2022-07-27.
//

import Foundation

final class SubscriptionListViewModel: ObservableObject {
    //published = sends notifications to subscribers whenever value has changed
    @Published var subscriptions: [Subscription] = []
    
}

