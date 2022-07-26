//
//  ingridentCheckerViewController.swift
//  final project
//
//  Created by scholar on 7/20/22.
//

import UIKit

class ingridentCheckerViewController: UIViewController {
// Outlet
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var textBox: UITextField!
    
    var badIngredients = [ "Isopropyl myristate" , "Isopropyl palmitate" , "Algae Extract" , "Lanolin" , "Coconut Oil" , "Parabens" , "Sodium Lauryl Sulfate" , "Isopropyl Myristate" , "Isopropyl Palmitate" , "Sodium Chloride" , "Synthetic Perfume" , "Alcohol" , "Beeswax" , "Coal Tar" , "Acetylated Lanolin Alcohol" , "Algin" , "Anhydrous Lanolin" , "Arachidic Acid" , "Ascorbyl Palmitate" , "Avobenzone" , "Azulene" , "Benzaldehyde" , "Benzoic Acid" , "Beta Carotene" , "Bubussa Oil" , "Butyl Stearate" , "Cajeput Oil" , "Calendula" , "Camphor" , "Capric Acid" , "Capric Acid" , "Carbomer" , "Carnuba Wax" , "Carotene" , "Carrageenan" , "Castor Oil" , "Ceteareth- 20" , "Cetearyl Alcohol" , "Cetyl Alcohol" , "Chaulmoogra Oil" , "Cocoa Butter" , "Coconut Butter" , "Colloidal Sulfur" , "Colloidal Sulfur" , "Corn Oil" , "Cotton Seed Oil" , "D & C Red Pigments" , "Decyl Oleate" , "Dioctyl Succinate" , "Disodium Monooleamido" , " Emulsifying Wax NF" , "Ethoxylated Lanolin" , "Evening Primrose Oil" , "Glyceryl-3-Diisostearate" , "Hexadecyl Alcohol" , "Hydrogenated Castor Oil" , "Hydrogenated Vegetable Oil" , "Hydroxypropylcellulose" , "Isocetyl Alcohol" , "Isodecyl Oleate" , "Isopropyl Isosterate" , "Isopropyl Lanolate" , "Isopropyl Linoleate" , "Isopropyl Myristate" , "Isopropyl Neopentanoate", "Isopropyl Palmitate" , "Isostearyl Isostearate" , "Isostearyl Neopentanoate" , "Laneth" , " Laureth 4" , "Laureth 23" , " Menthyl Anthranilate" , "Methoxycinnamate" , "Mink Oil" , "Myristic Acid" , " Myristyl Lactate" , "Octyl Palmitate" , "Octyl Stearate" , "Oleth 10", "Oleth-3" , "Oleyl Alcohol" , "Oxybenzone" , "Peanut Oil" , "PEG 100 Distearate", "PEG 150 Distearate" , "PEG 16 Lanolin" , "PEG 200 Dilaurate" , "PEG 2-Sulfosuccinate" , "PEG 8 Stearate" , "Pentaerythritol Tetra Isostearate" , "PG Caprylate" , "PG Dicaprylate" , "PG Dipelargonate" , "PG Monostearate", "Polyethylene Glycol", "Polyglyceryl-3-Diisostearate" , "Potassium Chloride" , "PPG 2 Myristyl Propionate" , "PPG-5-Ceteth-10 Phosphate" , "Propylene Glycol Monostearate" , "Palmitic Acid" , "Peach Kernel Oil" , "Peanut Oil" , "PEG 100 Distearate" , "PEG 150 Distearate" , "Red Algae" , "Sandalwood Seed Oil" , "Sesame Oil" , "Solulan 1" , "Solulan 16" , "Sorbitan Oleate" , "Sulfated Castor Oil" , "Sulfated Jojoba Oil" , "Synthetic Dyes" , "Soybean Oil" , "Steareth 20" , "Steareth 2" , "Steareth 10" , "Triethanolamine" , "Vitamin A Palmitate" , "Wheat Germ Glyceride/Oil" , "Xylene"]
    override func viewDidLoad() {
        super.viewDidLoad()
        textBox.text = "Please enter ingredient"
        resultLabel.isHidden = true
        
    }
        
  
                     
  
   // actions

    
    @IBAction func enterButton(_ sender: Any) {
 
        resultLabel.text = getResult(ingredient: textBox.text!)
    
    
        resultLabel.isHidden = false
    
    }
    
    func getResult(ingredient : String ) -> String {
        //for every bad ingredient in bad ingredients
        for badIngredient in badIngredients {
            if ingredient == badIngredient {
                return " \(ingredient) may cause acne and irritation. You may want to stay away from this ingredient as it is known to be comoedgonic, or clogged pores!"
            } else if ingredient == "Please enter ingredient" {
                return " Please enter an actual ingredient"
            }
            else {
                return " \(ingredient) has the potential to not cause acne. This ingredient does not cause more clogged pores."
            }
            
        }
        
        
        
        
        
        
        return "this is a test"
        
    }
    
    
    
    
}

