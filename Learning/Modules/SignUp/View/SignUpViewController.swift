//
//  SignUpViewController.swift
//  Learning
//
//  Created by Andrey Carreño on 11/07/23.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var showPasswordButton: UIButton!
    
    private var isShowPassword: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBorderRadiusButton()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapSendButton(_ sender: Any) {
    }
    
     private func addBorderRadiusButton() {
         sendButton.layer.cornerRadius = 10
    }
    
    @IBAction func tapShowPassword(_ sender: Any) {
        passwordTextField.isSecureTextEntry.toggle()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}