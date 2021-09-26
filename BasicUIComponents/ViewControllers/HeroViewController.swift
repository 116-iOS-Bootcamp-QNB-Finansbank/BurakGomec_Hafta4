//
//  HeroViewController.swift
//  BasicUIComponents
//
//  Created by Burak on 25.09.2021.
//

import UIKit
import Hero

class HeroViewController: UIViewController {

    @IBOutlet weak var heroButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true
        heroButton.hero.id = "heroLabel"
    }

    @IBAction func navigateToSecondHeroVC(_ sender: Any) {
        self.navigationController?.hero.isEnabled = true
        let nextViewController = Hero2ViewController()
        nextViewController.hero.isEnabled = true
        //nextViewController.hero.modalAnimationType = .selectBy(presenting: .pageIn(direction: .down), dismissing: .fade)
        nextViewController.hero.modalAnimationType = .zoom
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    



}
