//
//  Main.swift
//  Movie
//
//  Created by Truong, Nguyen Tan on 13/09/2023.
//

import SwiftUI
import SDWebImageSwiftUI

struct Main: View {
    
    var body: some View {
        NavigationView{
            ScrollView{
                ZStack{
                    VStack{
                        HStack{
                            Image(systemName:"gear.circle.fill")
                                .font(.system(size: 55))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Image(systemName:"person.circle")
                                .font(.system(size: 55))
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        .padding(.bottom, 50)
                        Spacer()
                        
                        VStack{
                            Text("WELCOME")
                                .font(.system(size: 40))
                                .fontWeight(.heavy)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 18)
                        }
                        .padding(.bottom, 50)
                        Spacer()

                        VStack{
                            MovieCarousel()
                            Divider()
                                .fontWeight(.heavy)
                                .background(Color.black)
                                .padding(.bottom, 20)
                            MovieBlockCarousel(titles: "Action")
                                .padding(.bottom, 30)
                            MovieBlockCarousel(titles: "Love")
                                .padding(.bottom, 30)
                        }
                    }
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
