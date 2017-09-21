//
//  TextViewController.swift
//  DeeplinkNavigator_Extension
//
//  Created by song on 2017/9/21.
//  Copyright © 2017年 CocoaPods. All rights reserved.
//

import UIKit
import DeeplinkNavigator
import DeeplinkNavigator_Extension

class TextViewController: UIViewController {
    
    deinit {
        print("deinit")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad")

        // Do any additional setup after loading the view.
    }
    @IBAction func selectEvent(_ sender: Any) {
//        Navigator.popTo("DeepLink://app/VC", context: ["dd":"回到VC刷新"], from: self, animated: true)
        
        Navigator.reloadTo("DeepLink://app/VC", context: ["dd":"直接VC刷新"], from: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension TextViewController: XibLifeCycleable{

    func navigationLoad(parameter: [String: Any]?,needRequest:Bool){
        print("TextViewController navigationLoad:\(String(describing: parameter))")
    }
}
