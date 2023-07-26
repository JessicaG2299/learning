//
//  SignUpProtocols.swift
//  Learning
//
//  Created by Andrey Carreño on 21/07/23.
//

import Foundation
protocol SignUpViewProtocol: AnyObject {
    var viewModel: SignUpViewModelProtocol? { get set }
    func failedValidateEmptyField(textError: String)
    func successValidateEmptyField()
}
protocol SignUpViewModelProtocol: AnyObject {
    var view: SignUpViewProtocol? { get set }
    func validateEmptyField(value: String, nameField: String)
    func validateEmail(value: String)
    func validatePassword(value: String)
    func sendForm()
    func setName (value: String)
    func setLastName (value: String)
    func setEmail (value: String)
    func setPassword (value: String)
}
protocol SignUpRouterProtocol {
    
}
