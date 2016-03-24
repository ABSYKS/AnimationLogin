//
//  ViewController.swift
//  AnimatationLogin
//
//  Created by Simon Bessey on 24/03/2016.
//  Copyright © 2016 Simon Bessey. All rights reserved.
// First Commit

import UIKit

class ViewController: UIViewController {
    
    var buttonpress = 0
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var tittle: UILabel!

    @IBOutlet weak var button: UITextField!
    @IBOutlet weak var logIn: UIButton!
    @IBOutlet weak var startAnim: UIButton!
    @IBAction func login(sender: AnyObject) {
        setSecondView()
        animateTwo()
    }
    
    @IBAction func startAnimation(sender: AnyObject) {
        
        buttonpress++
        
        switch(buttonpress) {
            
        case 0: setView(); animate()
        break;
            
        default: animate()
            
        }
        
    }
    
    func setSecondView() {
        username.center = CGPointMake(username.center.x, username.center.y)
        password.center = CGPointMake(password.center.x, password.center.y)
        logIn.center = CGPointMake(logIn.center.x, logIn.center.y)
        button.center = CGPointMake(button.center.x, button.center.y)
        tittle.center = CGPointMake(tittle.center.x, tittle.center.y)
    }
    
    func animateTwo() {
        UIView.animateWithDuration(2) { () -> Void in
            self.username.center = CGPointMake(self.username.center.x - 400, self.username.center.y) }
        UIView.animateWithDuration(1.5) { () -> Void in
            self.password.center = CGPointMake(self.password.center.x - 400, self.password.center.y) }
        UIView.animateWithDuration(1) { () -> Void in
            self.logIn.center = CGPointMake(self.logIn.center.x - 400, self.logIn.center.y) }
        UIView.animateWithDuration(1) { () -> Void in
            self.button.center = CGPointMake(self.button.center.x - 400, self.button.center.y) }
        UIView.animateWithDuration(3) { () -> Void in
            self.tittle.center = CGPointMake(self.tittle.center.x - 400, self.tittle.center.y) }
        UIView.animateWithDuration(0.5, delay: 0.5, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            self.startAnim.alpha = 1.0
            
            }, completion: nil)
    }
    
    func setView() {
        username.center = CGPointMake(username.center.x - 400, username.center.y)
        password.center = CGPointMake(password.center.x - 400, password.center.y)
        logIn.center = CGPointMake(logIn.center.x - 400, logIn.center.y)
        button.center = CGPointMake(button.center.x - 400, button.center.y)
        tittle.center = CGPointMake(tittle.center.x - 400, tittle.center.y)
    }
    
    func animate() {
        UIView.animateWithDuration(2) { () -> Void in
            self.username.center = CGPointMake(self.username.center.x + 400, self.username.center.y) }
        UIView.animateWithDuration(1.5) { () -> Void in
            self.password.center = CGPointMake(self.password.center.x + 400, self.password.center.y) }
        UIView.animateWithDuration(1) { () -> Void in
            self.logIn.center = CGPointMake(self.logIn.center.x + 400, self.logIn.center.y) }
        UIView.animateWithDuration(1) { () -> Void in
            self.button.center = CGPointMake(self.button.center.x + 400, self.button.center.y) }
        UIView.animateWithDuration(3) { () -> Void in
            self.tittle.center = CGPointMake(self.tittle.center.x + 400, self.tittle.center.y) }
        UIView.animateWithDuration(0.5, delay: 0.5, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            self.startAnim.alpha = 0.0
            
            }, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        setView()
    }
    
    override func viewDidAppear(animated: Bool) {
        animate()
    }
}