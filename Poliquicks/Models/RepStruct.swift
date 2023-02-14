// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable, Hashable {
    let normalizedInput: NormalizedInput
    let kind: String
    let divisions: Divisions
    let offices: [Office]
    let officials: [Official]
}

// MARK: - Divisions
struct Divisions: Codable, Hashable {
    let ocdDivisionCountryUs, ocdDivisionCountryUsStateNyCountyAlbany, ocdDivisionCountryUsStateNyCD20, ocdDivisionCountryUsStateNy: OcdDivisionCountryUs

    enum CodingKeys: String, CodingKey {
        case ocdDivisionCountryUs = "ocd-division/country:us"
        case ocdDivisionCountryUsStateNyCountyAlbany = "ocd-division/country:us/state:ny/county:albany"
        case ocdDivisionCountryUsStateNyCD20 = "ocd-division/country:us/state:ny/cd:20"
        case ocdDivisionCountryUsStateNy = "ocd-division/country:us/state:ny"
    }
}

// MARK: - OcdDivisionCountryUs
struct OcdDivisionCountryUs: Codable, Hashable {
    let name: String
    let officeIndices: [Int]
}

// MARK: - NormalizedInput
struct NormalizedInput: Codable, Hashable {
    let line1, city: String
    let state: USState
    let zip: String
}

enum USState: String, Codable {
    case dc = "DC"
    case ny = "NY"
}

// MARK: - Office
struct Office: Codable, Hashable {
    let name, divisionID: String
    let levels: [Level]
    let roles: [String]
    let officialIndices: [Int]

    enum CodingKeys: String, CodingKey {
        case name
        case divisionID = "divisionId"
        case levels, roles, officialIndices
    }
}

enum Level: String, Codable {
    case administrativeArea1 = "administrativeArea1"
    case administrativeArea2 = "administrativeArea2"
    case country = "country"
}

// MARK: - Official
struct Official: Codable, Hashable {
    let name: String
    let address: [Address]
    let party: Party
    let phones: [String]
    let urls: [String]?
    let channels: [Channel]?
    let geocodingSummaries: [GeocodingSummary]
    let photoURL: String?
    let emails: [String]?

    enum CodingKeys: String, CodingKey {
        case name, address, party, phones, urls, channels, geocodingSummaries
        case photoURL = "photoUrl"
        case emails
    }
}

// MARK: - Address
struct Address: Codable, Hashable {
    let line1: String
    let city: City
    let state: USState
    let zip: String
    let line2, line3: String?
}

enum City: String, Codable {
    case albany = "Albany"
    case newYork = "New York"
    case washington = "Washington"
}

// MARK: - Channel
struct Channel: Codable, Hashable {
    let type: TypeEnum
    let id: String
}

enum TypeEnum: String, Codable {
    case facebook = "Facebook"
    case twitter = "Twitter"
}

// MARK: - GeocodingSummary
struct GeocodingSummary: Codable, Hashable {
    let queryString: String
    let featureID: FeatureID
    let featureType: FeatureType
    let positionPrecisionMeters: Double
    let addressUnderstood: Bool

    enum CodingKeys: String, CodingKey {
        case queryString
        case featureID = "featureId"
        case featureType, positionPrecisionMeters, addressUnderstood
    }
}

// MARK: - FeatureID
struct FeatureID: Codable, Hashable {
    let cellID, fprint: String

    enum CodingKeys: String, CodingKey {
        case cellID = "cellId"
        case fprint
    }
}

enum FeatureType: String, Codable {
    case typeCompoundBuilding = "typeCompoundBuilding"
    case typeCompoundSection = "typeCompoundSection"
    case typeGeocodedAddress = "typeGeocodedAddress"
    case typePostalCode = "typePostalCode"
}

enum Party: String, Codable {
    case democraticParty = "Democratic Party"
}
