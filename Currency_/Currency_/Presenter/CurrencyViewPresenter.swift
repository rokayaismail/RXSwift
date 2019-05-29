//
//  CurrencyViewPresenter.swift
//  Currency_
//
//  Created by Esraa Hassan on 5/29/19.
//  Copyright © 2019 iti. All rights reserved.
//

import Foundation

class CurrencyViewPresenter: CurrencyViewPresenterProtocol {
    var view :CurrencyRatesViewController?

    func setData(rates: Rates) {
        view?.viewRates(rates: rates)
    }
    
    let currencyService :Service?
    init(view : CurrencyRatesViewController){
        currencyService = CurrencyRatesService()
        currencyService?.setPresenter(viewPresenter: self)
        currencyService?.getRates(url : "https://api.exchangeratesapi.io/latest")
        self.view = view
        
    }
}
