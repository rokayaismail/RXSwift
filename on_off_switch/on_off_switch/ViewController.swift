//
//  ViewController.swift
//  on_off_switch
//
//  Created by Esraa Hassan on 5/29/19.
//  Copyright © 2019 iti. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet weak var indicator: UILabel!

    @IBOutlet weak var toggleSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       toggleSwitch.rx.isOn
        .subscribe(onNext: { [weak self] state in
            if(state){ self?.indicator.text = "on" }else{ self?.indicator.text = "off" }
        })

             }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

