//
//  SecondViewController.swift
//  FutureDemo
//
//  Created by Mahmoud Abdul-wahab on 13/09/2022.
//

import UIKit
import Combine

class SecondViewController: UIViewController {
    
    typealias FutureResult =  ((Result<String, Never>) -> Void)
    var promise: FutureResult?
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapSendValues(_ sender: Any) {
        dismiss(animated: true){
            self.promise?(.success("Hello Futrue 😃"))
        }
    }
}
