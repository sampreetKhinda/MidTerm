//
//  QuadraticViewController.swift
//  MidTerm
//
//  Created by Sampreet singh on 08/03/24.
//

import UIKit

class QuadraticViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calculateBtn(_ sender: Any) {
        let calculateViewController = self.storyboard?.instantiateViewController(withIdentifier: "QuadraticViewController") as! QuadraticViewController
        self.navigationController?.pushViewController(calculateViewController, animated: true)
    }
    
}
