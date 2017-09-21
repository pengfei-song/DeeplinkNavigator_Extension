//
//  ViewController.swift
//  DeeplinkNavigator_Extension
//
//  Created by spf on 09/21/2017.
//  Copyright (c) 2017 spf. All rights reserved.
//

import UIKit
import DeeplinkNavigator
import DeeplinkNavigator_Extension

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func selectButton(_ sender: Any) {
        Navigator.push("DeepLink://app/Text", context: ["a":"1"], from: self, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: StoryboardLifeCycleable{
    
    static func viewControllerFromStoryBoard(navigation: DeeplinkNavigation) -> UIViewController?{
      return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
    }
    
    func navigationLoad(parameter: [String: Any]?,needRequest:Bool){
        print("ViewController navigationLoad:\(String(describing: parameter))")
    }
}

