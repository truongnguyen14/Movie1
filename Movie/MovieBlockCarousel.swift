//
//  MovieCarousel.swift
//  Movie
//
//  Created by Truong, Nguyen Tan on 13/09/2023.
//

import SwiftUI

struct MovieBlockCarousel: View {
    
    var titles: String
    
    var body: some View {
        ZStack {
            VStack{
                    HStack {
                        Text(titles)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(movies) { movie in
                                    if(titles == movie.category){
                                        ZStack{
                                            Color.gray.opacity(0.3).edgesIgnoringSafeArea(.all)
                                                .frame(height: 240)
                                                .cornerRadius(15)
                                                .padding(.top, 25)
                                        NavigationLink{
                                            MovieDetail(movie: movie)}
                                        label: {
                                            MovieBlock(movie: movie)
                                        }
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
            }
        }
    }
}

struct MovielockCarousel_Previews: PreviewProvider {
    static var previews: some View {
        MovieBlockCarousel(titles: "Action")
    }
}
