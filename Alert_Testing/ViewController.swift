//
//  ViewController.swift
//  Alert_Testing
//
//  Created by Mohamed Usama on 2/4/19.
//  Copyright © 2019 Mohamed Usama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func BasicAlert(_ sender: UIButton) {
        Alerts.ShowAlert(Interval: 0, AlertTitle: "Title", AlertMessage: "Message", AlertActionTitles: ["OK" , "Cancel" ], AlertTextTitles: [], alertViewController: self) { (Pressed, _) in
            print(Pressed)
        }
    }
    
    @IBAction func BasicAlertWithTimer(_ sender: UIButton) {
        Alerts.ShowAlert(Interval: 1, AlertTitle: "Title", AlertMessage: "Message", AlertActionTitles: ["OK" , "Cancel" , "Don't care" ], AlertTextTitles: [], alertViewController: self) { (Pressed, _) in
            print(Pressed)
        }
        
        
    }
    
    @IBAction func AlertWithTextField(_ sender: UIButton) {
        Alerts.ShowAlert(Interval: 0, AlertTitle: "Title", AlertMessage: "Message", AlertActionTitles: ["OK" , "Cancel" , "Don't care" ], AlertTextTitles: ["Name" , "Age"], alertViewController: self) { (Pressed, data) in
            print(Pressed , "   " , data)
        }
    }
    
    @IBAction func ActionSheet(_ sender: UIButton) {
        Alerts.ShowActionSheet(Interval: 0, AlertTitle: "Title", AlertMessage: "Message", AlertActionTitles: ["OK" ,"Cancel" , "Don't care" ], alertViewController: self) { (Pressed) in
            print(Pressed )

        }
    }
    
    @IBAction func ActionSheetWithTimer(_ sender: UIButton) {
        Alerts.ShowActionSheet(Interval: 1, AlertTitle: "Title", AlertMessage: "Message", AlertActionTitles: ["OK" ,"Cancel" , "Don't care" ], alertViewController: self) { (Pressed) in
            print(Pressed )
            
        }
    }
}

