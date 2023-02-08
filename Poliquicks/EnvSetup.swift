//
//  Environment.swift
//  Poliquicks
//
//  Created by Jason Starkman on 2/8/23.
//

import Foundation

public enum EnvSetup{
    enum Keys{
        static let apiKey = "API_KEY"
        static let baseUrl = "BASE_URL"
    }
    
    //Retrieve plist
    private static let infoDictionary: [String:Any] = {
        guard let dict = Bundle.main.infoDictionary else{
            fatalError("plist file not found")
        }
        return dict
    }()
    
    //Retrieve api key and base url from plist
    static let baseUrl: String = {
        guard let baseUrlString = EnvSetup.infoDictionary[Keys.baseUrl] as? String else{
            fatalError("base_url not found in plist")
        }
        return baseUrlString
    }()
    
    static let apiKey: String = {
        guard let apiKeyString = EnvSetup.infoDictionary[Keys.apiKey] as? String else{
            fatalError("api_key not found in plist")
        }
        return apiKeyString
    }()
}
