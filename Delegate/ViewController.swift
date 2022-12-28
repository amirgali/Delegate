//
//  ViewController.swift
//  Delegate
//
//  Created by Амиргали Туралинов on 27.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view...
    }

    func showSecondVC() {
        let storyboard = UIStoryboard(name: "SecondVC", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        vc.delegate = self
        present(vc, animated: true)
    }

    @IBAction func didTapButton() {
        showSecondVC()
    }
}

extension ViewController: SecondScreenDelegate {
    func didEnterText(text: String?) {
        print(text)
    }
    
    
}
