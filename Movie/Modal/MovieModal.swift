//
//  MovieModal.swift
//  Movie
//
//  Created by Truong, Nguyen Tan on 13/09/2023.
//

import Foundation
import SwiftUI

struct MovieModal: Identifiable, Codable, Hashable{
    var id : Int
    var name: String
    var description: String
    var category: String
    var url: String
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}
