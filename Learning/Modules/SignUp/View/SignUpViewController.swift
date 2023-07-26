//
//  SignUpViewController.swift
//  Learning
//
//  Created by Andrey Carreño on 11/07/23.
//

import UIKit

class SignUpViewController: UIViewController, SignUpViewProtocol {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var showPasswordButton: UIButton!
    @IBOutlet weak var alertLabel: UILabel!
    @IBOutlet weak var alertContainer: UIView!
    
    var viewModel: SignUpViewModelProtocol?
    
    private var isShowPassword: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = SignUpViewModel(view: self)
        addBorderRadiusButton()
        hideAlert()
        // Do any additional setup after loading the view.
    }

    @IBAction func editingDidEndName(_ sender: Any) {
        let textField = sender as! UITextField
        viewModel?.validateEmptyField(value: textField.text ?? "", nameField: "nombre")
    }
    
    @IBAction func editingDidEndLastName(_ sender: Any) {
        let textField = sender as! UITextField
        viewModel?.validateEmptyField(value: textField.text ?? "", nameField: "apellido")
    }
    @IBAction func tapSendButton(_ sender: Any) {
        viewModel?.sendForm()
    }
    
    private func addBorderRadiusButton() {
         sendButton.layer.cornerRadius = 10
    }
    
    @IBAction func tapShowPassword(_ sender: Any) {
        passwordTextField.isSecureTextEntry.toggle()
    }
    
    func failedValidateEmptyField(textError: String) {
        showAlert(message: textError)
    }
    
    func successValidateEmptyField() {
        hideAlert()
    }
    
    private func hideAlert() {
        alertContainer.isHidden = true
    }
    private func showAlert(message: String) {
        alertContainer.isHidden = false
        alertLabel.text = message
    }
}
