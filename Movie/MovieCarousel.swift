//
//  MovieCarousel.swift
//  Movie
//
//  Created by Truong, Nguyen Tan on 15/09/2023.
//

import SwiftUI

struct MovieCarousel: View {
    @State private var index: Int = 0
        var body: some View {
                VStack{
                    TabView(selection: $index) {
                        ForEach(movies, id: \.self) { index in
                                NavigationLink{
                                    MovieDetail(movie: index)
                                }
                            label: {
                                Image(index.imageName)
                                    .resizable()
                                    .ignoresSafeArea(.all)
                                    .overlay{
                                        Text("\(index.name)")
                                            .font(.system(size: 30))
                                            .fontWeight(.heavy)
                                            .foregroundColor(.white)
                                            .padding(.leading, 15)
                                            .padding(.bottom, 10)
                                            .frame(maxHeight: .infinity,alignment: .bottom)
                                            .frame(maxWidth: .infinity,alignment: .leading)
                                            .background(LinearGradient(gradient: Gradient(colors: [Color(.black), Color.clear]), startPoint: .bottom, endPoint: .top))
                                    }
                            }
                            }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                    HStack(spacing: 10) {
                        ForEach(movies.indices, id: \.self) { index in
                            Circle()
                                .fill(Color.black.opacity(index == self.index ? 1 : 0.3))
                                .scaleEffect(index == self.index ? 1.4 : 1)
                                .animation(.spring(), value: index == self.index)
                                .frame(width: 20, height: 20)
                            
                        }
                    }
                    .padding()
                }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.8)
        }
}

struct MovieCarousel_Previews: PreviewProvider {
    static var previews: some View {
        MovieCarousel()
    }
}

