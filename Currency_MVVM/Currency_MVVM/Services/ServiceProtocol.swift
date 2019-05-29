//
//  ServiceProtocol.swift
//  Currency_
//
//  Created by Esraa Hassan on 5/29/19.
//  Copyright © 2019 iti. All rights reserved.
//

import Foundation
protocol Service {
    func getRates(url : String ,completionHandler : @escaping (Rates) -> Void)
}
