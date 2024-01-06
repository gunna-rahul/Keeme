//
//  PieData.swift
//  Keeme
//
//  Created by Gunna Rahul on 21/12/23.
//

import SwiftUI
import Foundation

struct PieData: Identifiable {
    let meet:String
    let time:Int
    let color:Color
    var id:String {
        meet
    }
    static var all: [PieData] {
        [
            .init(meet: "Target Focus Time", time: 90, color: Color.black),
            .init(meet: "Time Focused Today", time: 40, color: Color(UIColor(white: 0.5, alpha: 1.0)))
        ]
    }
}


