//
//  HomeView.swift
//  LarkyNudgeGeoTest
//
//  Created by Juan Rodriguez on 25/6/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text("Home")
                    .font(.system(size: 50))
                
                Spacer()
            }
            
            Spacer()
        }
        .padding(20)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
