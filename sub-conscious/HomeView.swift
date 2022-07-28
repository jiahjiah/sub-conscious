//
//  HomeView.swift
//  sub-conscious
//
//  Created by HDSB on 2022-07-27.
//

import SwiftUI
import SwiftUIX

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                ZStack {
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(LinearGradient(
                                    gradient: Gradient(stops: [
                                .init(color: Color(#colorLiteral(red: 0.07058823108673096, green: 0.26666659116744995, blue: 0.5607843399047852, alpha: 1)), location: 0),
                                .init(color: Color(#colorLiteral(red: 0.3376389145851135, green: 0.9208333492279053, blue: 0.8508499264717102, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.8472221674106832, y: -0.36111113989033466),
                                    endPoint: UnitPoint(x: -0.4110787222278236, y: 1.8127854520696247)))
                            .frame(height: 400)
                            .frame(maxWidth: .infinity)
                            .edgesIgnoringSafeArea(.all)
                        
                        Image("Other 13")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 400)
                            .frame(maxWidth: .infinity)
                            .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0, y: 5)
                        VStack {
                            Text("Your total for this month is:")
                                .font(.title3)
                                .bold()
                                .foregroundColor(.white.opacity(0.8))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .opacity(0.7)
                            Text("CAD$89.46")
                                .font(.largeTitle).bold()
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding()
                            
                        }
                        .padding()
                        .background(VisualEffectBlurView(blurStyle: .systemThinMaterialDark))
                        .cornerRadius(20)
                        .padding(10)
                        .shadow(color: Color.white.opacity(0.3), radius: 5, x:0, y: 5)

                        
                    }
                }
                
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
                    .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0, y: 5)

                    
                    
                    //MARK: TransactionList
                    AllSubscriptionList()
                }
                .padding()
                .frame(maxWidth: .infinity)
            }

            }
        .background(Color.background)
        .navigationTitle("July 2022")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            //MARK: Notification Icon
            ToolbarItem {
                Image(systemName: "person.circle.fill")
                    .renderingMode(.original)
                    .foregroundStyle(Color.icon, .primary)
            }
        }
        .navigationViewStyle(.stack)

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
