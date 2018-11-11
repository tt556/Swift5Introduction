//
//  IntroSecondController.swift
//  Swift5Introduction
//
//  Created by 神崎泰旗 on 2018/11/11.
//  Copyright © 2018年 taiki. All rights reserved.
//

import UIKit
import PGEZTransition

class IntroSecondController: UIViewController {

    @IBOutlet var transformView1: PGTransformView!
    
    @IBOutlet var title1: PGTransformLabel!
    
    @IBOutlet var title2: PGTransformLabel!
    
    @IBOutlet var image1: PGTransformImageView!
    
    
    @IBOutlet var nextButton: UIButton!
    
    private var transition:PGTransformTransition!
    
    private lazy var nextVC:IntroThirdController = {
        
        return UIStoryboard.init(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "IntroThirdController") as! IntroThirdController
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.transitionSetUp()
        
    }
    
    @IBAction func onNext(_ sender: Any) {
        
        self.transition.presentTransformViewController()
        
    }
    
    @IBAction func onBack(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
        
    }
}

extension IntroSecondController{
    
    func transitionSetUp(){
        
        self.transition = PGTransformTransition.init(target: self, presenting: self.nextVC)
        
        transformView1
            .setStartAlpha(0.0, start: 0.0, duration: 1.0)
            .setEndAlpha(0.0, start: 0.0, duration: 1.0)
        
        image1
            .setStartTransform(.rateX(1.0), start: 0.0, duration: 1.0)
            .setStartAlpha(1.0, start: 0.0, duration: 1.0)
            .setEndTransform(.rateX(-1.0), start: 0.0, duration: 1.0)
            .setEndAlpha(1.0, start: 0.0, duration: 1.0)
        
        
        title1
            .setStartTransform(.rateX(0.3), start: 0.0, duration: 1.0)
            .setStartAlpha(0.0, start: 0.0, duration: 1.0)
            .setEndTransform(.rateX(0.0), start: 0.0, duration: 1.0)
            .setEndAlpha(1.0, start: 0.0, duration: 0.3)
        
        title2
            .setStartTransform(.rateX(0.5), start: 0.0, duration: 1.0)
            .setStartAlpha(0.0, start: 0.0, duration: 1.0)
            .setEndTransform(.rateX(0.0), start: 0.0, duration: 1.0)
            .setEndAlpha(1.0, start: 0.0, duration: 0.3)
        
        
    }
    
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

