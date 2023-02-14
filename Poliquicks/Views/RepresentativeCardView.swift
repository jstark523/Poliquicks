//
//  RepresentativeCardView.swift
//  Poliquicks
//
//  Created by Jason Starkman on 1/31/23.
//

import SwiftUI

struct RepresentativeCardView: View {
    @EnvironmentObject var dm: PoliquicksDataModel
    @State private var offices = [Office]()
    @State private var officials = [Official]()
    @State private var apiService: APIService?
    @State private var repIndex = 0
    @State private var cards = [RepresentativeCard]()

    var body: some View {
        NavigationStack {
            VStack{
                List(cards.reversed(), id: \.self) { card in
                    Image("")
                        .frame(width: 130, height: 70)
                        .background(Color.gray)
                    Text(card.office.name)
                        .bold()
                    Text(card.official.name)
                        .bold()
                }
            }
            .navigationTitle("Your Representatives")
        }
        .task {
            apiService = APIService(urlString: dm.repUrl)
            do {
                if let service = apiService{
                    let response: Welcome = try await service.getJSON()
                    FileManager.endcodeAndSave(objects: response, fileName: "response.json")
                    offices = response.offices
                    officials = response.officials
                    for index in 0...offices.count - 1 {
                        cards.append(RepresentativeCard(office: offices[index], official: officials[index]))
                    }
                }
            } catch {
                print("Error fetching data: \(error)")
            }
        }
    }
}

struct RepresentativeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RepresentativeCardView()
            .environmentObject(PoliquicksDataModel())
        
    }
}
