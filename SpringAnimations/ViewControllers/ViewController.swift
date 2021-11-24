//
//  ViewController.swift
//  SpringAnimations
//
//  Created by Эдуард on 23.11.2021.
//

import Spring

class ViewController: UIViewController {
    
    
    @IBOutlet weak var precentLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var ringAnimationView: SpringImageView!
    @IBOutlet weak var startButtonName: UIButton!
    
    var codeText = ""
    var data: SpringView!
    
    override func viewDidLoad() {
        
       
        
        super.viewDidLoad()
//      startButtonName.layer.borderColor = UIColor.white.cgColor
//      startButtonName.layer.borderWidth = 2
        startButtonName.layer.cornerRadius = 30
        startButtonName.layer.shadowColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        // startButtonName.layer.shadowColor = UIColor.white.cgColor
        startButtonName.layer.shadowRadius = 5
        startButtonName.layer.shadowOffset = CGSize(width: 2, height: 2)
        ringAnimationView.transform = CGAffineTransform(translationX: -300, y: 0)
        
    }

    @IBAction func startButtonPress(_ sender: UIButton) {
        
        ringAnimationView.transform = CGAffineTransform(translationX: 30, y: 30)
        ringAnimationView.animation = "squeezeDoun"
                ringAnimationView.curve = "easeOutExpo"
        ringAnimationView.force = 0.66
        ringAnimationView.duration = 0.73
        ringAnimationView.delay = 0.12
                ringAnimationView.animate()
        
        
        ringAnimationView.animation = "squeeze"
        ringAnimationView.curve = "easeln"
        ringAnimationView.force = 2
        ringAnimationView.duration = 5
        ringAnimationView.animate()
    }
}

