//
//  Strings.swift
//  Learning
//
//  Created by Andrey Carreño on 11/06/23.
//

import Foundation
 
class Strings {
    
    static var intance: Strings {
        return Strings()
    }
    static let titleInitialController: String = "titulo controlador"
    
    func removeWords(phrase: String, remove: String) -> String {
        return removeSpace(phrase: phrase.replacingOccurrences(of: remove, with: ""))
    }
    
    func removeSpace(phrase: String) -> String {
       return phrase.replacingOccurrences(of:" ", with: "")
    }
}
