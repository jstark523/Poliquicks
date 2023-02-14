//
//  Environment.swift
//  Poliquicks
//
//  Created by Jason Starkman on 2/8/23.
//

import Foundation

public enum EnvSetup{
    enum Keys{
        static let repApiKey = "REP_API_KEY"
        static let repBaseUrl = "REP_BASE_URL"
        static let lobApiKey = "LOB_API_KEY"
        static let lobBaseUrl = "LOB_BASE_URL"
    }
    
    //Retrieve plist
    private static let infoDictionary: [String:Any] = {
        guard let dict = Bundle.main.infoDictionary else{
            fatalError("plist file not found")
        }
        return dict
    }()
    
    //Retrieve api key and base url from plist
    static let repBaseUrl: String = {
        guard let baseUrlString = EnvSetup.infoDictionary[Keys.repBaseUrl] as? String else{
            fatalError("rep_base_url not found in plist")
        }
        return baseUrlString
    }()
    
    static let repApiKey: String = {
        guard let apiKeyString = EnvSetup.infoDictionary[Keys.repApiKey] as? String else{
            fatalError("rep_api_key not found in plist")
        }
        return apiKeyString
    }()
    static let lobBaseUrl: String = {
        guard let baseUrlString = EnvSetup.infoDictionary[Keys.lobBaseUrl] as? String else{
            fatalError("lob_base_url not found in plist")
        }
        return baseUrlString
    }()
    
    static let lobApiKey: String = {
        guard let apiKeyString = EnvSetup.infoDictionary[Keys.lobApiKey] as? String else{
            fatalError("lob_api_key not found in plist")
        }
        return apiKeyString
    }()
}
