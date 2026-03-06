//
//  DetailsViewController.swift
//  MarioCheekAssign3
//
//  Created by Mondrelle Cheek on 3/4/26.
//

import UIKit

class DetailsViewController: UIViewController {
    var selectedFood: String?
    
    //the button will update title, picture, and text depending on recipe
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch selectedFood{
        case "Ramen":
            detailTitle.text = "Ramen"
            detailImage.image = UIImage(named: "Ramen")
            detailText.text = """
            Ramen is a Japanese noodle soup.
            
            Ingrediants:
            2 cups Chicken or vegetable broth
            1 pack Dried ramen noodles
            1 tbsp Soy sauce
            1 tsp Sesame oil
            1 Soft-boiled egg (7-minute egg)
            1 Green onion, thinly sliced
            Optional: Sriracha or chili flakes
            """
        case "Tacos":
            detailTitle.text = "Tacos"
            detailImage.image = UIImage(named: "Tacos")
            detailText.text = """
            Tacos are a traditional Mexican dish consisting of a small hand-sized corn or wheat tortilla topped with a filling. The tortilla is then folded around the filling and eaten by hand.
            
            Ingrediants:
            1 lb Ground beef (80/20 or 90/10 lean)
            12 Small corn or flour tortillas
            1 tbsp Chili powder
            1 tsp Cumin
            1/2 tsp Salt
            1/2 White onion, finely diced
            1/4 cup Fresh cilantro, chopped
            2 Limes, cut into wedges
            1/2 cup Shredded cheddar or Mexican blend cheese (optional)
            1/2 cup Salsa or hot sauce
            """
        case "Sushi":
            detailTitle.text = "Sushi"
            detailImage.image = UIImage(named: "Sushi")
            detailText.text = """
            Sushi is a traditional Japanese dish consisting of vinegared rice combined with various ingredients such as raw fish, vegetables, and sometimes sweetened soy sauce.
            
            Ingrediants:
            2 cups Sushi rice (short-grain white rice, seasoned with rice vinegar, sugar, and salt)
            4 sheets Nori (seaweed)
            1/2 lb Imitation crab sticks (or real crab meat)
            1 Large avocado, sliced thin
            1 Persian cucumber, deseeded and cut into matchsticks
            2 tbsp Toasted sesame seeds
            Optional: Kewpie mayonnaise (to mix with the crab)
            """
        default:
            detailText.text = "No food selected"
            //detailImage.image = UIImage(named: "")
            
        }
    }

}
