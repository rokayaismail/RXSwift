//
//  CurrencyViewModel.swift
//  Currency_MVVM
//
//  Created by JETS Mobile Lab-11 on 5/29/19.
//  Copyright © 2019 iti. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class CurrencyViewModel {
    var currencyService : Service = CurrencyRatesService()
    private let publishSubject = PublishSubject<[String: Double]>()
    var observable :Observable<[String: Double]>?
    let disposeBag = DisposeBag()
    
    init() {
        observable = publishSubject.asObservable()
        currencyService.getRates(url: "https://api.exchangeratesapi.io/latest" ,completionHandler: {
            [weak self] (response) in
            self!.publishSubject.onNext(response.rates)
        })
    }
}
