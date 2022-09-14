//
//  FirstViewController.swift
//  FutureDemo
//
//  Created by Mahmoud Abdul-wahab on 13/09/2022.
//

import UIKit
import Combine

class FirstViewController: UIViewController {
    
    var anyCancalableSet = Set<AnyCancellable>()

    @IBOutlet weak var showWelcomMessageLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapedShowVC(_ sender: Any) {
        showSecondVC()
    }
    
    private func showSecondVC() {
           let secondVC = SecondViewController()
           secondVC
               .welcomeMessagePublisher
               .compactMap({$0})
               .assign(to: \.text, on: showWelcomMessageLable)
               .store(in: &anyCancalableSet)
           self.present(secondVC, animated: true)
    }
}

