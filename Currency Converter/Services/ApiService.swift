//
//  ApiService.swift
//  Currency Converter
//
//  Created by Kate on 13.04.2023.
//

import Alamofire
import Foundation

struct ApiService {
    
    private let myApiKey = "YsCfqYHukgRcxUGXID2mrRRlHci8e2rfTXFs0QOx"
    
    func makeRequest() {
        AF.request("https://api.freecurrencyapi.com/v1/latest?apikey=\(myApiKey)").responseJSON { response in
            debugPrint(response)
        }
    }
}
