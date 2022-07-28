//
//  SubscriptionRow.swift
//  sub-conscious
//
//  Created by HDSB on 2022-07-27.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct SubscriptionRow: View {
    var subscription: Subscription
    
    var body: some View {
        HStack(spacing: 20) {
            //MARK: Subscription Category Icon
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color.icon.opacity(0.3))
                .frame(width: 44, height: 44)
                .overlay{
                    FontIcon.text(.awesome5Solid(code: subscription.icon), fontsize: 24, color: Color.icon)
                }
            VStack(alignment: .leading, spacing: 6) {
                //MARK: Subscription Service Name
                Text(subscription.name)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                //MARK: Subscription Category
                Text(subscription.category.name)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                //MARK: Renewal Date
                Text(subscription.dateParsed, format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            // MARK: Subscription Amount
            Text(subscription.amount, format: .currency(code: "CAD"))
                .bold()

        }
        .padding([.top, .bottom], 8)
    }

}

struct SubscriptionRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SubscriptionRow(subscription: subscriptionDemoNetflix)
            SubscriptionRow(subscription: subscriptionDemoNetflix)
                .preferredColorScheme(.dark)
            
        }
    }
}
