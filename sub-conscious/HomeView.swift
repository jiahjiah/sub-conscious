//
//  HomeView.swift
//  sub-conscious
//
//  Created by HDSB on 2022-07-27.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            //MARK: Title
            Text("July")
                .font(.title)
                .bold()
            
            //MARK: Monthly Report
            VStack(alignment: .leading, spacing: 10.0) {
                Image("Blob 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 128)
                    .frame(maxWidth: .infinity)
                    .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0, y: 5)
                
                Text("Monthly Report")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("Your monthly Report for June, 2022. Let's see how you did!")
                    .opacity(0.7)
            }
            .padding()
            .background(
                LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: Color(#colorLiteral(red: 1, green: 0.41960784792900085, blue: 0.2078431397676468, alpha: 1)), location: 0),
                        .init(color: Color(#colorLiteral(red: 0.9686274528503418, green: 0.772549033164978, blue: 0.6235294342041016, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
                    endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672))
            )
            .cornerRadius(30.0)
            .foregroundColor(.white)
            
            
            //MARK: TransactionList
            AllSubscriptionList()
        }
        .padding()
        .frame(maxWidth: .infinity)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
