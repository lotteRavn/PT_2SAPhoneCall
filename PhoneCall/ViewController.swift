//
//  ViewController.swift
//  PhoneCall
//
//  Created by Lotte Ravn on 15/02/16.
//  Copyright © 2016 Lotte Ravn. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate {

    @IBOutlet weak var txtPhoneNumber: UITextField!
    
    
    @IBOutlet weak var txtSMS: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func callPhone(sender: AnyObject) {
        
        if let phoneUrl = NSURL(string: "tel://\(31531926)")
        {
            UIApplication.sharedApplication().openURL(phoneUrl)
        }

        
    }

    @IBAction func sendSMS(sender: AnyObject) {
        
        let smsVC = MFMessageComposeViewController()
        
        smsVC.body = txtSMS.text!
        smsVC.recipients = [txtPhoneNumber.text!]
        smsVC.messageComposeDelegate = self
        
        self.presentViewController(smsVC, animated: true, completion: nil)
        
    }
    
    func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
        
    }

}

