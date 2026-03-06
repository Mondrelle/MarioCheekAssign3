//  ViewController.swift
//  MarioCheekAssign3
//  Created by Mondrelle Cheek on 3/4/26.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var submittedRating: UILabel!
    
    //button to send
    @IBAction func foodButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToDetails", sender: sender)
    }
    
    //seque for DetailsViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetails" {
            if let destinationVC = segue.destination as? DetailsViewController,
               let button = sender as? UIButton {
                let foodOptions = ["Ramen", "Tacos", "Sushi"]
                destinationVC.selectedFood = foodOptions[button.tag]
            }
        }
    }
    
    //return from previous screen
    @IBAction func unwindToHome(_ unwindSegue: UIStoryboardSegue) {
        if let sourceVC = unwindSegue.source as? ReviewViewController {
            //text from the Review screen's label
            let finalRating = sourceVC.reviewLabel.text
            //setting the screen's label to match that text
            submittedRating.text = finalRating
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

