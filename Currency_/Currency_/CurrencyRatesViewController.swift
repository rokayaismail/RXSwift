//
//  ViewController.swift
//  Currency_
//
//  Created by Esraa Hassan on 5/29/19.
//  Copyright © 2019 iti. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class CurrencyRatesViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewPresenter : CurrencyViewPresenterProtocol?
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewPresenter = CurrencyViewPresenter(view: self)


        

        
    }
    func viewRates(rates : Rates){
        Observable.of(rates.rates)
            .bind(to: tableView.rx.items(cellIdentifier: "tableCell", cellType: MyTableViewCell.self)) { (row, element, cell) in
                cell.mainLbl?.text = "\(rates.base)"
                cell.fractionLbl?.text = "\(element.value)"
                cell.secondryLbl?.text = "\(element.key)"
            }
            .disposed(by: disposeBag)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

