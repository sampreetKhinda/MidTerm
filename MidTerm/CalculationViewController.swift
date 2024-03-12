//
//  CalculationViewController.swift
//  MidTerm
//
//  Created by Sampreet singh on 09/03/24.
//

import UIKit

class CalculationViewController: UIViewController {

    @IBOutlet weak var inputTextA: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var inputTextB: UITextField!
    @IBOutlet weak var xValueLabel: UILabel!
    @IBOutlet weak var inputTextC: UITextField!
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        let backButton = UIBarButtonItem()
        backButton.title = "Quadratic Function"
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton

            // Do any additional setup after loading the view.

            //Looks for single or multiple taps.

        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

               //Uncomment the line below if you want the tap not not interfere and cancel other interactions.

        tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)
    }
    
    // Function to call quadratic equation after validating values
    @IBAction func calculateBtn(_ sender: Any) {
        if let aValue = Double(inputTextA.text!) {
            if let bValue = Double(inputTextB.text!) {
                if let cValue = Double(inputTextC.text!) {
                    let roots = quadraticRoots(a: aValue, b: bValue, c: cValue)
                    if let root1 = roots.root1, let root2 = roots.root2 {
                        messageLabel.text = "There are two values for X."
                        xValueLabel.text = "X: \(root1), X: \(root2)"
                    } else if let root1 = roots.root1 {
                        messageLabel.text = "There is only one value for X."
                        xValueLabel.text = "X: \(root1)"
                    } else {
                        messageLabel.text = "There are no results since the discriminant is less than zero."
                        xValueLabel.text = ""
                    }
                } else {
                    messageLabel.text = "The value you entered for C is invalid."
                    xValueLabel.text = ""
                }
            } else {
                messageLabel.text = "The value you entered for B is invalid."
                xValueLabel.text = ""
            }
        } else {
            messageLabel.text = "The value you entered for A is invalid."
            xValueLabel.text = ""
        }
    }
    
    @IBAction func clearBtn(_ sender: Any) {
        inputTextA.text = ""
        inputTextB.text = ""
        inputTextC.text = ""
        messageLabel.text = ""
        xValueLabel.text = ""
        // Show dialog
        showAlert()
    }
    // Function to show the alert dialog
        func showAlert() {
            // Create an alert controller
            let alertController = UIAlertController(title: "Alert", message: "Enter a value for A and B to find C", preferredStyle: .alert)
            
            // Create an action for the alert
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            // Add the action to the alert controller
            alertController.addAction(okAction)
            
            // Present the alert controller
            present(alertController, animated: true, completion: nil)
        }
    //Calls this function when the tap is recognized.

        @objc func dismissKeyboard() {

            //Causes the view (or one of its embedded text fields) to resign the first responder status.

            view.endEditing(true)

        }
    
    // Function to calculate roots of a quadratic equation
    func quadraticRoots(a: Double, b: Double, c: Double) -> (root1: Double?, root2: Double?) {
        let discriminant = b * b - 4 * a * c
        
        if discriminant > 0 {
            let root1 = (-b + sqrt(discriminant)) / (2 * a)
            let root2 = (-b - sqrt(discriminant)) / (2 * a)
            return (root1, root2)
        } else if discriminant == 0 {
            let root = -b / (2 * a)
            return (root, nil)
        } else {
            return (nil, nil)
        }
    }

}
