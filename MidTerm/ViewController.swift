//
//  ViewController.swift
//  MidTerm
//
//  Created by Sampreet singh on 06/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    var cityImages: [String: UIImage] = [
            "Toronto": UIImage(named: "Toronto.png") ?? UIImage(),
            "Calgary": UIImage(named: "Calgary.png") ?? UIImage(),
            "Montreal": UIImage(named: "Montreal.png") ?? UIImage(),
            "Halifax": UIImage(named: "Halifax.png") ?? UIImage(),
            "Winnipeg": UIImage(named: "Winnipeg.png") ?? UIImage(),
            // Add more cities and their corresponding images as needed
        ]

    @IBOutlet weak var cityImageView: UIImageView!
    override func viewDidLoad() {

            super.viewDidLoad()

            // Do any additional setup after loading the view.

            //Looks for single or multiple taps.

                let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

               //Uncomment the line below if you want the tap not not interfere and cancel other interactions.

               tap.cancelsTouchesInView = false

               view.addGestureRecognizer(tap)

        }

    @IBOutlet weak var inputCityText: UITextField!
    
    @IBAction func findCity(_ sender: Any) {
        let city = cityImages[inputCityText.text!]
        if let city = city {
            // Do something with the Toronto image
            print("city image found")
            cityImageView.image = city
        } else {
            print("city image not found")
        }
    }
    //Calls this function when the tap is recognized.

        @objc func dismissKeyboard() {

            //Causes the view (or one of its embedded text fields) to resign the first responder status.

            view.endEditing(true)

        }


}

