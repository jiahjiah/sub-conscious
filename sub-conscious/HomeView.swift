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
            ScrollView {
                    VStack { //to make all content together
                           
                            ZStack { //for header part
                                
                                //MARK: Background
                                Image("background")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .ignoresSafeArea(.container, edges: .top)
                                    Spacer()

                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.800000011920929)))
                                    RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.699999988079071)), lineWidth: 3)
                                    
                                    //MARK: Total for Month
                                    VStack {
                                        Text("THIS MONTH YOU HAVE USED ").font(.system(size: 12, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)))
                                        Text("CA$89.46").font(.system(size: 35, weight: .heavy))
                                    }
                                }
                                .compositingGroup()
                                .offset(y: 170)
                                .frame(width: 276, height: 97)
                                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        }
                            VStack(alignment: .leading) { //rest of content/lower screen
                                
                                //MARK: Monthly Report
                                Image("monthly report")
                                    .padding(.top, 30)
                                
                                //MARK: Title
                                Text("August")
                                    .font(.title)
                                    .bold()
                                    .padding(.leading, 20)

                
                                //MARK: TransactionList
                                AllSubscriptionList()
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            
                    }//end to screen vstack
                } //end of ZStack
                    .overlay(Image("+ button"), alignment: .bottom)

        }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
