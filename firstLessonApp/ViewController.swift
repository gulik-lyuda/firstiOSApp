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
        title = "Main App Page"
        // Do any additional setup after loading the view.
    }

    @IBAction func changeAppCaption(_ sender: UIButton) {
        appCaption.backgroundColor = UIColor(named: "greyLight")
        appCaption.text = "It's still brilliant!"
        appCaption.font = appCaption.font.withSize(24)
        appCaption.textColor = UIColor.red
        sender.isEnabled = false
    }
    @IBAction func changeViewController(_ sender: UIButton) {
        self.view.backgroundColor = UIColor(named: "bgContrast")
        self.navigationController?.title = "View Controller"
        sender.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SliderVC" {
            print("SliderVC should be opened :-)")
        }
    }
    
    @IBAction func openNewScreen(_ sender: UIButton) {
        
        
    }
    
}

