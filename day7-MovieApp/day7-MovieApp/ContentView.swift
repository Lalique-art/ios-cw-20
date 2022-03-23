//
//  ContentView.swift
//  day7-MovieApp
//
//  Created by Shaimaa on 23/03/2022.
//

import SwiftUI

struct ContentView: View {
    var films = ["howl","sophie","kid","howls moving castle"]
    var body: some View {
        NavigationView{
        List(films,id:\.self){film in
            NavigationLink(destination: detailsView()){
            movierow(film: film)
            }
        }.navigationTitle("ghibli")
        }
    }
}
            

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct movierow: View {
    var film: String
    var body: some View {
        HStack{
            Image(film)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            Text(film)
                .font(.headline)
                .fontWeight(.bold)
        }
    }
}
