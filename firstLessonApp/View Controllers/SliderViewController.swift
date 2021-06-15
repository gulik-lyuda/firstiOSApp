//
//  SliderViewController.swift
//  myBrilliantApp
//
//  Created by Lyudmyla Gulik on 25.05.2021.
//

import UIKit

class SliderViewController: UIViewController {

    @IBOutlet private var outerView: UIView!
    @IBOutlet private var innerView: UIView!
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaultConfig()
        sliderChanged(slider)
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        //change inner view opacity on changing slider value
        innerView.alpha = CGFloat(sender.value)
    }
}

private extension SliderViewController {
    func defaultConfig() {
        title = "Slider Page"
        
        outerView.layer.cornerRadius = 15
        innerView.layer.cornerRadius = 12
        
        slider.value = 0.7
    }
}
