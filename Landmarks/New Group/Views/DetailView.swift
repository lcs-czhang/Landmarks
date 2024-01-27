//
//  ContentView.swift
//  Landmarks
//
//  Created by Yuzhou Zhang on 2024-01-27.
//

import SwiftUI

struct DetailView: View {
    let item: Landmark
    var body: some View {
        ScrollView {
            Image(item.image)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(item.isRecommended == true ? "🥳" : "🤢")
                    .font(.title)
                    .padding(5)
                Spacer()
            }
            .padding(.leading)
            
            Text(item.description)
            .padding(.horizontal)
        }
        .navigationTitle(item.name)
    }
}

#Preview {
    NavigationStack {
        DetailView(item: Banff)
    }
}
#Preview {
    NavigationStack {
        DetailView(item: Banff)
    }
}
