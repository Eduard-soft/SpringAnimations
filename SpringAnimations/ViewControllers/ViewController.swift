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
    var ring: Ring!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButtonName.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        startButtonName.layer.borderWidth = 2
        startButtonName.layer.cornerRadius = 30
        
        ringAnimationView.transform = CGAffineTransform(translationX: 0, y: -500)
    }

    @IBAction func startButtonPress(_ sender: UIButton) {

        ringAnimationView.animation = "fadeInDown"
        ringAnimationView.curve = "linear"
        ringAnimationView.rotate = 4.5
        ringAnimationView.force = 2
        ringAnimationView.duration = 1.6
        ringAnimationView.delay = 0.3
        ringAnimationView.animate()
    }
}

