//
//  SignUpViewModel.swift
//  Learning
//
//  Created by Andrey Carreño on 21/07/23.
//

import Foundation

class SignUpViewModel: SignUpViewModelProtocol {
    var view: SignUpViewProtocol?
    
    init(view: SignUpViewProtocol) {
        self.view = view
    }
    
    func validateEmptyField(value: String, nameField: String) {
        if value.isEmpty {
            view?.failedValidateEmptyField(textError: "por favor diligencie el campo: \(nameField)")
        } else {
            view?.successValidateEmptyField()
            
        }
    }
    
    func validateEmail(value: String) {
        
    }
    
    func validatePassword(value: String) {
        
    }
    
    func sendForm() {
        print("esto se imprime desde SignUp")
    }
    
    func setName(value: String) {
        
    }
    
    func setLastName(value: String) {
        
    }
    
    func setEmail(value: String) {
        
    }
    
    func setPassword(value: String) {
        
    }

}
