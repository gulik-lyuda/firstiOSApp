//
//  ViewController.swift
//  firstLessonApp
//
//  Created by Lyudmyla Gulik on 17.04.2021.
//

import UIKit

//These 2 extensions we need to define random colors
extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}
// end of 2 extensions we need to define random colors

class ViewController: UIViewController {

    @IBOutlet weak var appCaption: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main App Page"
        // Do any additional setup after loading the view.
    }

    @IBAction func changeAppCaption(_ sender: UIButton) {
        appCaption.backgroundColor = .random() //UIColor(named: "greyLight")
        appCaption.text = "It's still brilliant!"
        appCaption.font = appCaption.font.withSize(24)
        appCaption.textColor = .random() // UIColor.red
    }
    
    @IBAction func changeViewController(_ sender: UIButton) {
        self.view.backgroundColor = .random() //UIColor(named: "bgContrast")
        self.navigationController?.title = "View Controller"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SliderVC" {
            print("SliderVC should be opened :-)")
        }
    }
    
    @IBAction func openNewScreen(_ sender: UIButton) {
        
        
    }
    
}

