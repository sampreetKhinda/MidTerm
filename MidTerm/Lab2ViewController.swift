//
//  Lab2ViewController.swift
//  MidTerm
//
//  Created by Sampreet singh on 09/03/24.
//

import UIKit

class Lab2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    var index = 0
    var steps = 1
   
    @IBOutlet weak var outputLabel: UILabel!
    
        @IBAction func decBtn(_ sender: UIButton) {
            index-=steps
            outputLabel.text = String(index)
        }
        @IBAction func incBtn(_ sender: UIButton) {
            index+=steps
            outputLabel.text = String(index)
        }
    
        @IBAction func resetBtn(_ sender: Any) {
            index = 0
            steps = 1
            outputLabel.text = String(index)
        }
        @IBAction func stepBtn(_ sender: Any) {
            steps = 2
        }
    

}
