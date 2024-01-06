//
//  PieChartView.swift
//  Keeme
//
//  Created by Gunna Rahul on 18/12/23.
//

import SwiftUI
import Charts

struct PieChartView: View {
    var MeetTimes = PieData.all
    var body: some View {
            HStack {
                HStack{
                    ZStack{
                        Chart(MeetTimes) { MeetTime in
                            SectorMark(
                                angle: .value(" ",MeetTime.time),
                                innerRadius: .ratio(0.8),
                                angularInset: 1)
                            .annotation(position: .overlay){
                            }
                            .foregroundStyle(MeetTime.color)
                        }
                        VStack{
                            Text("63%")
                                .font(.system(size:30,weight: .medium,design: .default))

                        }
                    }
                }
                HStack{
                    VStack{
                        Text("Target Focus Time : 60 mins\n\nTime Focused Today : 38 mins\n\n")
                          .font(
                            Font.custom("SF Pro Display", size: 15)
                              .weight(.medium)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(.black)
                          .frame(width: 204, height: 72, alignment: .top)                    }
                    
                }
                
            }
            .frame(height: 150)
            .chartXAxis(.hidden)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .shadow(radius: 10)
            .padding()
    }
}
#Preview {
    PieChartView()
}
