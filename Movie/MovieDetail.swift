//
//  MovieDetail.swift
//  Movie
//
//  Created by Truong, Nguyen Tan on 13/09/2023.
//

import SwiftUI

struct MovieDetail: View {
    
    let movie: MovieModal
    
    var body: some View {
        VStack{
            Image("\(movie.imageName)")
            Text("\(movie.name)")
            Text("\(movie.description)")
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: movies[0])
    }
}
