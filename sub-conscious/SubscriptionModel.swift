//
//  SubscriptionModel.swift
//  sub-conscious
//
//  Created by HDSB on 2022-07-27.
//

import Foundation
import SwiftUIFontIcon

struct Subscription: Identifiable {
    let id: Int
    let name: String
    let amount: Double
    let discount: Int
    let date: String
    let renewalPeriod: Int
    let isMonth: Bool
    let categoryId: Int
    let category: Category
    
    var icon: FontAwesomeCode {
        if let category = Category.categories.first(where: {$0.id == categoryId}) {
            return category.icon
        }
        
        return .question
    }
    
    var dateParsed: Date {
        date.dateParsed()
    }
}

struct Category {
    let id: Int
    let name: String
    let icon: FontAwesomeCode
}

extension Category {
    static let music = Category(id: 1, name: "Music", icon: .music)
    static let videoStreaming = Category(id: 2, name: "Video Streaming", icon: .video)
    static let food = Category(id: 3, name: "Food", icon: .hamburger)
    static let beautyHealthWellness = Category(id: 4, name: "Beauty, Health, & Wellness", icon: .hand_holding_heart)
    static let utilities = Category(id: 5, name: "Utilities", icon: .screwdriver)
    static let miscellaneous = Category(id: 6, name: "Miscellaneous", icon: .ellipsis_h)
}

extension Category {
    static let categories : [Category] = [
        .music,
        .videoStreaming,
        .food,
        .beautyHealthWellness,
        .utilities,
        .miscellaneous
    ]
}
