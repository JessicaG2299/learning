//
//  ViewController.swift
//  Learning
//
//  Created by Andrey Carreño on 23/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headLineLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do = any additional setup after loading the view.
        
        headLineLabel.text = Strings.intance.removeWords(phrase: Strings.titleInitialController, remove: "controller")
    }


}

