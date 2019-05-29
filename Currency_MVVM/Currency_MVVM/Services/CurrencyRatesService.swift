//
//  CurrencyRatesService.swift
//  Currency_
//
//  Created by Esraa Hassan on 5/29/19.
//  Copyright © 2019 iti. All rights reserved.
//

import Foundation
import RxAlamofire
import SwiftyJSON

class CurrencyRatesService: Service {

    func getRates(url : String ,completionHandler : @escaping (Rates) -> Void) {
        var rates :Rates?
        RxAlamofire.requestJSON(.get , url)
        .asObservable()
        .subscribe(onNext: { (response,json) in
                let json = JSON(json)
            rates = Rates(base: json["base"].stringValue, rates: json["rates"].dictionaryObject as! [String : Double], date: json["date"].stringValue)
            }
            , onError: { e in print(e)}
            , onCompleted: { [weak self] in
                completionHandler(rates!)
                print("\(rates!)")
        })
        
        
    }
}
