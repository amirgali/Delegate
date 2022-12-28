//
//  SecondVC.swift
//  Delegate
//
//  Created by Амиргали Туралинов on 27.12.2022.
//

import UIKit

protocol SecondScreenDelegate: AnyObject {
    func didEnterText(text: String?)
}

class SecondVC: UIViewController {
    @IBOutlet private var textField: UITextField!
    @IBOutlet private var actionButton: UIButton!
    
    weak var delegate: SecondScreenDelegate?
     
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        textField.delegate = self
    }
    
    @objc func didTapButton() {
        delegate?.didEnterText(text: textField.text)
    }
}

extension SecondVC: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         print(string)
        return true
    }
}
