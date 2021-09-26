//
//  Hero2ViewController.swift
//  BasicUIComponents
//
//  Created by Burak on 25.09.2021.
//

import UIKit
import Hero

class Hero2ViewController: UIViewController {

    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    lazy var heroLabel : UILabel = {
       let label = UILabel()
        label.backgroundColor = .red
        label.text = "Label"
        label.textAlignment = .center
        label.textColor = .white
        label.frame = CGRect(x: width * 0.5 - (width * 0.3 / 2) , y: height * 0.5 - (height * 0.2 / 2) , width: width * 0.3, height: height * 0.2)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        view.addSubview(heroLabel)
        
        self.hero.isEnabled = true
        heroLabel.hero.id = "heroLabel"
    
        heroLabel.isUserInteractionEnabled = true
        heroLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(popVC)))
    }

    @objc func popVC() {
        self.navigationController?.popViewController(animated: true)
    }

}
