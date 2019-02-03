//
//  Alerts.swift
//  Alert_Testing
//
//  Created by Mohamed Usama on 2/4/19.
//  Copyright © 2019 Mohamed Usama. All rights reserved.
//

import Foundation
import UIKit

class Alerts {
    
    
    
    static func ShowAlert(Interval : Int ,  AlertTitle : String , AlertMessage : String  , AlertActionTitles : [String] ,  AlertTextTitles : [String]  , alertViewController : UIViewController  , CompletionHandler : @escaping ( String , [String:String] )-> Void)  {
        
        let alert = UIAlertController(title: AlertTitle, message: AlertMessage, preferredStyle: .alert)
        for textPlaceHolder in AlertTextTitles { alert.addTextField { $0.placeholder = textPlaceHolder} }
        AlertActionTitles.map {actionTitle in
            let AlertAction = UIAlertAction(title: actionTitle, style: .default, handler: { Action in
                var Text = [String : String]()
                for Index in AlertTextTitles.indices {Text [AlertTextTitles[Index]] =  alert.textFields![Index].text! }
                CompletionHandler( actionTitle  , Text)})
            alert.addAction(AlertAction)
        }
        
        if alert.actions.count > 0 {
            if Interval <= 0  { alertViewController.present(alert,animated:true) }
            else {
                alertViewController.present(alert,animated:true,completion:
                    {Timer.scheduledTimer(withTimeInterval: TimeInterval(Interval) , repeats:false, block: {_ in alertViewController.dismiss(animated: true, completion: nil) })})
            }
        }
        
    }
    
    
    
    static func ShowActionSheet( Interval : Int , AlertTitle : String , AlertMessage : String  , AlertActionTitles : [String] ,   alertViewController : UIViewController  , CompletionHandler : @escaping ( String)-> Void)  {
        
        let alert = UIAlertController(title: AlertTitle, message: AlertMessage, preferredStyle: .actionSheet)
        
         AlertActionTitles.map {actionTitle in
            let AlertAction = UIAlertAction(title: actionTitle, style: .default, handler: { _ in
                CompletionHandler( actionTitle )})
            alert.addAction(AlertAction)
        }
        if alert.actions.count > 0 {
            if Interval <= 0  { alertViewController.present(alert,animated:true) }
            else {
                alertViewController.present(alert,animated:true,completion:
                    {Timer.scheduledTimer(withTimeInterval: TimeInterval(Interval) , repeats:false, block: {_ in alertViewController.dismiss(animated: true, completion: nil) })})
            }
        }
    }
    
    
}
