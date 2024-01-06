//
//  StartKeeme.swift
//  Keeme
//
//  Created by Gunna Rahul on 03/01/24.
//

import SwiftUI

struct StartKeeme: View {
    var body: some View {
        Image("keeme")
            .resizable()
            .scaledToFill()
            .frame(width: 207,height: 170)
            .clipShape(Rectangle())
            .padding()
        Text("Keeme")
            .font(.system(size:52,weight: .medium,design: .default))
            .padding()
    }
}

#Preview {
    StartKeeme()
}
