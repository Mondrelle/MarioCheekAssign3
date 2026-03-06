//
//  ReviewViewController.swift
//  MarioCheekAssign3
//
//  Created by Mondrelle Cheek on 3/4/26.
//

import UIKit

class ReviewViewController: UIViewController {
    
    //connections, var
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var ratingStackView: UIStackView!
    var currentRating: Int?
    
    @IBAction func starTapped(_ sender: UIButton) {
        //button in stack change depending on how many stars
        let selectedRating = sender.tag
        self.currentRating = selectedRating
        for case let button as UIButton in ratingStackView.arrangedSubviews {
            if button.tag <= selectedRating {
                button.setTitle("⭐", for: .normal)
            } else {
                button.setTitle("☆", for: .normal)
            }
        }//end of for
        
        //update the reviewLabel text based on the number of stars
        switch selectedRating {
            case 1: reviewLabel.text = "1/5 - Poor"
            case 2: reviewLabel.text = "2/5 - Fair"
            case 3: reviewLabel.text = "3/5 - Good"
            case 4: reviewLabel.text = "4/5 - Very Good"
            case 5: reviewLabel.text = "5/5 - Excellent!"
            default: reviewLabel.text = "0/5 - No Rating"
        }//end of switch
    }//end of starTapped
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        //guard to validate a star was picked [cite: 35, 77]
        guard currentRating != nil else {
            let alert = UIAlertController(title: "No Rating", message: "Please select a star before submitting.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                present(alert, animated: true) // Show alert if empty
                return
            }
        //perform the unwind to go home
        performSegue(withIdentifier: "unwindToHome", sender: self)
    }//end of submitButton

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
