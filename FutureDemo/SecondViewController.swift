//
//  SecondViewController.swift
//  FutureDemo
//
//  Created by Mahmoud Abdul-wahab on 13/09/2022.
//

import UIKit
import Combine

class SecondViewController: UIViewController {
    
   private(set) var welcomeMessagePublisher = PassthroughSubject<String,Never>()
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapSendValues(_ sender: Any) {
        dismiss(animated: true){
            self.welcomeMessagePublisher.send("Hello Futrue 😃")
        }
    }
}
