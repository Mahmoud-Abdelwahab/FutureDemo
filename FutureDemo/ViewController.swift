//
//  ViewController.swift
//  FutureDemo
//
//  Created by Mahmoud Abdul-wahab on 13/09/2022.
//

import UIKit
import Combine

class ViewController: UIViewController {
    
    var anyCancalableSet = Set<AnyCancellable>()

    @IBOutlet weak var showWelcomMessageLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapedShowVC(_ sender: Any) {
        showSecondVC()
            .compactMap({$0})
            .assign(to: \.text, on: showWelcomMessageLable)
            .store(in: &anyCancalableSet)
        print( Thread.isMainThread)
    }
    
    private func showSecondVC()-> AnyPublisher<String,Never> {
       return Future { promise in
           let secondVC = SecondViewController()
           secondVC.promise = promise
           self.present(secondVC, animated: true)
       }
       .eraseToAnyPublisher()
    }
}

