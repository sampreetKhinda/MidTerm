//
//  Lab3ViewController.swift
//  MidTerm
//
//  Created by Sampreet singh on 09/03/24.
//

import UIKit

class Lab3ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var countryName: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var outputTV: UITextView!
    
    @IBOutlet weak var alertLabel: UILabel!
    
    override func viewDidLoad() {

            super.viewDidLoad()

            // Do any additional setup after loading the view.

            //Looks for single or multiple taps.

                let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

               //Uncomment the line below if you want the tap not not interfere and cancel other interactions.

               tap.cancelsTouchesInView = false

               view.addGestureRecognizer(tap)

        }

       //Calls this function when the tap is recognized.

        @objc func dismissKeyboard() {

            //Causes the view (or one of its embedded text fields) to resign the first responder status.

            view.endEditing(true)

        }
    
    @IBAction func clearBtn(_ sender: Any) {
        firstName.text = ""
        lastName.text = ""
        countryName.text = ""
        age.text = ""
        outputTV.text = ""
        alertLabel.text = ""
    }
    @IBAction func addDetailsBtn(_ sender: Any) {
        var finalStr :String? = ""
        finalStr = " Full Name : \(firstName.text!)  \(lastName.text!) \n Country : \(countryName.text!) \n Age : \(age.text!)"
        outputTV.text = finalStr!
        alertLabel.text = ""
    }
    
    @IBAction func submitBtn(_ sender: Any) {
  
        if(firstName.text == "" ||
           lastName.text == "" ||
           countryName.text == "" ||
           age.text == ""){
            alertLabel.text = "Complete the missing Info!"
        } else {
            alertLabel.text = "Successfully submitted!"
        }
    }

}
