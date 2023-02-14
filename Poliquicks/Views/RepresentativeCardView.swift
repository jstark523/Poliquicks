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
    @State private var apiService: APIService?

    var body: some View {
        NavigationView {
            List(offices, id: \.self) { office in
                Image("")
                .frame(width: 130, height: 70)
                .background(Color.gray)
                Text(office.name)
                    .bold()
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
