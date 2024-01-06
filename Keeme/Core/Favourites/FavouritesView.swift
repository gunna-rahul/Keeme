//
//  FavouritesView.swift
//  Keeme
//
//  Created by Gunna Rahul on 21/12/23.
//

import SwiftUI

struct FavouritesView: View {
    var body: some View {
        VStack{
            NavigationStack{
                ScrollView {
                    FavouritesHeading()
                }
            }
        }
    }
}

#Preview {
    FavouritesView()
}
