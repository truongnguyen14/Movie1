//
//  MovieDetail.swift
//  Movie
//
//  Created by Truong, Nguyen Tan on 13/09/2023.
//

import SwiftUI

struct MovieBlock: View {
    var movie: MovieModal
    var body: some View {
        VStack {
            Image("\(movie.imageName)")
                .resizable()
                .frame(width: 270, height: 200)
                .cornerRadius(15)
                .padding(.bottom, 3)
            Text("\(movie.name)")
                .foregroundColor(.black)
                .bold()
                .font(.system(size: 24))
                .frame(width: 260)
                .padding(.bottom, 5)
                .multilineTextAlignment(.center)
        }
    }
}

struct MovieBlock_Previews: PreviewProvider {
    static var previews: some View {
        MovieBlock(movie: movies[0])
    }
}
