//
//  HomeView.swift
//  Poliquicks
//
//  Created by Jason Starkman on 2/7/23.
//

import SwiftUI

struct HomeView: View {
    @State private var showSettings = false
    var body: some View {
        ZStack {
            NavigationView{
                VStack{
                }
                    .navigationViewStyle(.stack)
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar{
                        ToolbarItem(placement: .navigationBarTrailing){
                            HStack{
                                Button{
                                    showSettings.toggle()
                                }
                                label:{
                                    Image(systemName: "gearshape.fill")
                                }
                            }
                        }
                    }
                    .sheet(isPresented: $showSettings){
                        SettingsView()
                    }
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
