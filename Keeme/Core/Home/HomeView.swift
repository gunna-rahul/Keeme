//
//  HomeView.swift
//  Keeme
//
//  Created by Gunna Rahul on 18/12/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            NavigationStack{
                ScrollView {
                    LazyVStack(spacing: -5){
                        IntroView()
                        HomeScheduleBar()
                        PieChartView()
                        HStack{
                            Text("Find the Buddy")
                                .font(.system(size:25,weight: .medium,design: .default))

                            Spacer()
                        }
                            .font(.system(size:20,weight: .medium,design: .default))
                            .padding()
                        ForEach(0 ... 4 , id: \.self){ listing in
                            NavigationLink(value: listing){
                                Listings() }
                        }
                        
                    }
                    
                }
                .navigationDestination(for: Int.self) { listing in
                    BuddyView() }
            
            }
            
        }
    }
}

#Preview {
    HomeView()
}
