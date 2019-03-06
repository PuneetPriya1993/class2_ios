//
//  ViewController.swift
//  class2
//
//  Created by MacStudent on 2019-03-05.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var a:Int = 0
    var b:Int = 0
    var c:Int = 0
    
    
    @IBOutlet weak var txtno1: UITextField!
    
    @IBOutlet weak var txtno2: UITextField!
    
    @IBOutlet weak var lblresult: UILabel!
    
    @IBOutlet weak var btnadd: UIButton!
    
    
    @IBOutlet weak var lblswitch: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        lblresult.text = "IOS First Program"
    }


    
    @IBAction func btnadd(_ sender: UIButton)
    {
       
         a = Int(txtno1.text!)!
         b = Int(txtno2.text!)!
        
         c = a + b
        
        lblresult.text = "Add: \(c)"
    }
    
    
    @IBAction func btnswitch(_ sender: UISwitch)
    {
        if(sender.isOn)
        {
            self.lblswitch.text = "Switch is ON"
        }
        
        
        else
        {
             self.lblswitch.text = "Switch is OFF"        }
    }
 
    
    
    
    @IBAction func showalert(_ sender: UIButton)
    {
       let alert = UIAlertController(title: "Alert", message: "How are you?", preferredStyle: .actionSheet)
        
        
      let defaultaction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        
        let cancelaction = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action:UIAlertAction) in print("Cancel Click")})
        
        let destructiveaction = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        
       // alert.addAction(defaultaction)
      //   alert.addAction(cancelaction)
        //  alert.addAction(destructiveaction)
       // self.present(alert, animated: true)
        
        
       // self.showalert()
      //  self.showActionSheet()
            self.showInputAlert()
    }
    
    //First Type
    
    
    func showalert()
    {

            let alert = UIAlertController(title: "Alert", message: "How are you>", preferredStyle: .alert)
            
            let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
            let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action:UIAlertAction) in
                print("Cancel Click")
            })
            
            let actionDestrictive = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
            
            alert.addAction(actionDefault)
            alert.addAction(actionCancel)
            alert.addAction(actionDestrictive)
            
            self.present(alert, animated: true)
        
    }
   
    
    //Second Type
    
    func showActionSheet()
    {
        let alert = UIAlertController(title: "Alert", message: "How are you>", preferredStyle: .actionSheet)
        
        let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action:UIAlertAction) in
            print("Cancel Click")
        })
        
        let actionDestrictive = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        
        alert.addAction(actionDefault)
        alert.addAction(actionCancel)
        alert.addAction(actionDestrictive)
        
        self.present(alert, animated: true)
    }
    
    //Third Type
    
    func showInputAlert()
    {
        let alert = UIAlertController(title: "What's your name?", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Input your name here..."
        })
        
        alert.addTextField { (textField) in
            textField.isSecureTextEntry = true
            textField.placeholder = "Input your password here..."
        }
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            if let name = alert.textFields?.first?.text {
                print("Your name: \(name)")
            }
            
            if let name = alert.textFields?[1].text {
                print("Your password: \(name)")
            }
        }))
        
        self.present(alert, animated: true)
    }
    
    
    @IBAction func btnsub(_ sender: UIButton)
    {
        
        a = Int(txtno1.text!)!
        b = Int(txtno2.text!)!
        
        c = a - b
        
        lblresult.text = "Subtract: \(c)"
    }
    
    
    @IBAction func btncode(_ sender: UIButton)
    {
        var sb = UIStoryboard(name: "Main", bundle: nil)
        
        var vc = sb.instantiateViewController(withIdentifier: "fvc") as! fourthViewController
        
        self.present(vc, animated: true)
    }
}
