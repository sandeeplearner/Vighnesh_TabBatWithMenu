//
//  LoginViewController.swift
//  Test
//
//  Created by Spare on 30/01/17.
//  Copyright © 2017 Spare. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateInitialViewController()
        
        let offset = self.view.frame.maxX
        vc?.view.frame = CGRect(x: offset, y: self.view.frame.origin.y, width: self.view.frame.size.width, height: self.view.frame.size.height)
        UIApplication.shared.keyWindow?.addSubview(vc!.view)
        
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            self.view?.frame = ((self.view?.frame)?.offsetBy(dx:-offset, dy: 0))!
            vc?.view.frame = (vc?.view.frame.offsetBy(dx: -offset, dy: 0))!
            //secondVCView?.alpha = 1.0
            
        }) { (Finished) -> Void in
            UIApplication.shared.keyWindow?.rootViewController = vc
        }
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
