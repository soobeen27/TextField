//
//  ViewController.swift
//  TextField
//
//  Created by Soo Jang on 2022/09/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        // Do any additional setup after loading the view.
        setUp()
    }
    func setUp() {
        view.backgroundColor = .gray
        textField.returnKeyType = .done
        textField.borderStyle = .roundedRect
        textField.placeholder = "email"
        textField.keyboardType = .emailAddress
        textField.clearButtonMode = .always
        textField.becomeFirstResponder()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text == "" {
            textField.placeholder = "Type Something"
            return false
        } else {
            return true
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (textField.text?.count)! > 10 {
            return false
        } else {
            return true
        }
    }
    /**
     * Called when the user click on the view (outside the UITextField).
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func buttonTouchUp(_ sender: UIButton) {
        view.endEditing(true)
    }
}

