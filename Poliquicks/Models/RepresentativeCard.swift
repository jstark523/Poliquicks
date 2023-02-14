//
//  RepresentativeCard.swift
//  Poliquicks
//
//  Created by Jason Starkman on 2/14/23.
//

import Foundation

struct RepresentativeCard: Identifiable, Hashable {
    var id = UUID()
    var office: Office
    var official: Official
}
