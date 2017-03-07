//
//  ViewController.swift
//  Task1
//
//  Created by Fery Syukur on 3/7/17.
//  Copyright © 2017 Fery Syukur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColorFromRGB(rgbValue: 0x828282)
        
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "logo")
        imageView.frame = CGRect(x:0, y: 50, width: view.frame.width, height: 100)
        imageView.contentMode = .center
        view.addSubview(imageView)
        
        let labelLogo = UILabel()
        labelLogo.text = "ODDBIT"
        labelLogo.frame = CGRect(x:0, y: 140, width: view.frame.width, height: 100)
        labelLogo.font = UIFont.monospacedDigitSystemFont(ofSize: 50, weight: 5)
        labelLogo.textAlignment = .center
        labelLogo.textColor = .white
        view.addSubview(labelLogo)
        
        let labelDesc = UILabel()
        labelDesc.text = "We Are a Software Consultancy"
        labelDesc.frame = CGRect(x:0, y: 220, width: view.frame.width, height: 50)
        labelDesc.font = UIFont.monospacedDigitSystemFont(ofSize: 15, weight: 1)
        labelDesc.textAlignment = .center
        labelDesc.textColor = .white
//        labelDesc.lineBreakMode = .byWordWrapping
        view.addSubview(labelDesc)
        
        let labelDesc2 = UILabel()
        labelDesc2.text = "Team in Bali"
        labelDesc2.frame = CGRect(x:0, y: 240, width: view.frame.width, height: 50)
        labelDesc2.font = UIFont.monospacedDigitSystemFont(ofSize: 15, weight: 1)
        labelDesc2.textAlignment = .center
        labelDesc2.textColor = .white
        //        labelDesc.lineBreakMode = .byWordWrapping
        view.addSubview(labelDesc2)
        
        let customButton = UIButton(type: .system)
        customButton.frame = CGRect(x:16, y: 500, width: view.frame.width - 32, height: 40)
        customButton.backgroundColor = UIColorFromRGB(rgbValue: 0xb94e5b)
        customButton.setTitle("LOGIN", for: .normal)
        customButton.setTitleColor(.white, for: .normal)
        view.addSubview(customButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    


}

