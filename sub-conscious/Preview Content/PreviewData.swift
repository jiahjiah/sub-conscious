//
//  PreviewData.swift
//  sub-conscious
//
//  Created by HDSB on 2022-07-27.
//

import Foundation
import SwiftUI

var subscriptionDemoNetflix = Subscription(id: 1, name: "Netflix", amount: 16.49, discount: 0, date: "06/23/22", renewalPeriod: 1, isMonth: true, categoryId: 2, category: .videoStreaming)
var subscriptionDemoAmazonPrime = Subscription(id: 2, name: "Amazon Prime", amount: 9.99, discount: 0, date: "06/23/22", renewalPeriod: 1, isMonth: true, categoryId: 5, category: .utilities)
var subscriptionDemoSpotify = Subscription(id: 3, name: "Spotify Premium", amount: 9.99, discount: 0, date: "06/24/22", renewalPeriod: 1, isMonth: true, categoryId: 1, category: .music)
var subscriptionDemoAnytimeFitness = Subscription(id: 4, name: "Anytime Fitness", amount: 52.99, discount: 0, date: "06/24/22", renewalPeriod: 1, isMonth: true, categoryId: 4, category: .beautyHealthWellness)


var subscriptionDemoCanva = Subscription(id: 5, name: "Canva Pro", amount: 149.99, discount: 0, date: "08/03/22", renewalPeriod: 1, isMonth: false, categoryId: 5, category: .utilities)



var subscriptionListPreviewData: [Subscription] = [subscriptionDemoNetflix, subscriptionDemoAmazonPrime, subscriptionDemoSpotify, subscriptionDemoAnytimeFitness]

var subscriptionListPreviewDataMore: [Subscription] = [subscriptionDemoNetflix, subscriptionDemoAmazonPrime, subscriptionDemoSpotify, subscriptionDemoAnytimeFitness, subscriptionDemoCanva]

