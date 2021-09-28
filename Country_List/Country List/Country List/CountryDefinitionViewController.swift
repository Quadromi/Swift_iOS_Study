//
//  CountryDefinitionViewController.swift
//  Country List
//
//  Created by 황정현 on 2021/09/27.
//

import UIKit

class CountryDefinitionViewController: UIViewController {

    @IBOutlet weak var bigFlagLabel: UILabel!
    
    @IBOutlet weak var countryDefinitionLabel: UILabel!
    
    var country = Country();
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bigFlagLabel.text = country.flag;
        countryDefinitionLabel.text = "\(country.name) flag is \(country.flag). It was founded in \(country.year). It is in \(country.region). The population is \(country.population) million";
        
        
    }
}
