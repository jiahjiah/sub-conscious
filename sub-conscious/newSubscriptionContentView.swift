//
//  newSubscriptionContentView.swift
//  sub-conscious
//
//  Created by HDSB on 2022-08-02.
//

import SwiftUI

class FormViewModel: ObservableObject{
    @State var subscriptionName = ""
    @State var subscriptionCost = ""
    @State var discount = ""
    @State var renewalDate = Date()
    @State var renewalPeriod = ""
    @State var remindersOn: Bool = false


}

struct newSubscriptionContentView: View {
    @StateObject var subscriptionListVM = SubscriptionListViewModel()

    @State private var renewalSelection = "Renewal Type"
    let renewalTypes = ["Week", "Month", "Year"]
    
    @State private var categorySelection = "Category"
    let categories = ["Music", "Video Streaming", "Food", "Beauty, Health, & Wellness", "Utilities", "Miscellaneous"]

    @State var remindersOn: Bool = false
    
    @StateObject var viewModel = FormViewModel()
    
    var body: some View {

        VStack {
            Text("New Subscription")
                .font(.largeTitle)
                .bold()
                .padding(30)
                Spacer()
                .cornerRadius(30)
            Form {
                Section {
                    TextField("Subscription Name", text: $viewModel.subscriptionName)
                }
                Section {
                    TextField("Subscription Cost", text: $viewModel.subscriptionCost)
                    TextField("% Discount (optional)", text: $viewModel.discount)
                }
                
                Section(header: Text("Renewal")) {
                    DatePicker(selection: $viewModel.renewalDate, in: ...Date(), displayedComponents: .date) {
                        Text("Select a date")
                    }
                    TextField("Renewal Period", text: $viewModel.renewalPeriod)
                    
                    Picker("Renewal Type", selection: $renewalSelection) {
                                    ForEach(renewalTypes, id: \.self) {
                                        Text($0)
                                    }
                    }
                    .pickerStyle(.menu)
                    
                }
                Section(header: Text("Category")) {
                    Picker("Category", selection: $categorySelection) {
                                    ForEach(categories, id: \.self) {
                                        Text($0)
                                    }
                    }
                    .pickerStyle(.menu)

                }
                
                Section {
                    Toggle("Reminders", isOn: $remindersOn)
                        .toggleStyle(SwitchToggleStyle(tint: Color.lightOrange))
                }
            }
            .background(.white)

        }
    }
}

struct newSubscriptionContentView_Previews: PreviewProvider {
    static var previews: some View {
        newSubscriptionContentView()
    }
}
