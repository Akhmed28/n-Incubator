//
//  ContentView.swift
//  n!
//
//  Created by Akhmed Kudaibergen on 02.06.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                
                VStack {
                    Image(systemName: "star")
                        .background(Color.yellow)
                        .font(.system(size: 60))
                        .padding()
                    
                    Text("Akhmed Kudaibergen")
                        .font(.headline)
                    Image("MyImages")
                        .resizable()
                        .frame(width: 200, height: 150)
                        .padding()
                    
                    HStack {
                        Text("Age: 16")
                        Text("Location: Kz, Almaty")
                        Text("Followers: ~3000")
                        //                    Image("tiktok")
                        //                Text("More Details")
                    }
                    
                    NavigationLink("More Details", destination: DetailView())
                        .font(.headline)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("MyImages")
                Spacer()
                Text("Hiii, my name is Akhmed, and I am an 11th grade student at Taldykorgan BIL. I am interested in programming, especially in SwiftUI. That is why I created this app.")
                    .italic()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
