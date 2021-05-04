//
//  ViewController.swift
//  firstLessonApp
//
//  Created by Lyudmyla Gulik on 17.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appCaption: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeAppCaption(_ sender: UIButton) {
        appCaption.backgroundColor = UIColor(named: "greyLight")
        appCaption.text = "Not First App :-)"
        appCaption.font = appCaption.font.withSize(28)
        appCaption.textColor = UIColor.red
        sender.isEnabled = false
    }
    @IBAction func changeViewController(_ sender: UIButton) {
        self.view.backgroundColor = UIColor(named: "pink")
        self.navigationController?.title = "View Controller"
        sender.isEnabled = false
    }
    
    @IBAction func openNewScreen(_ sender: UIButton) {
        
    }
    
}

