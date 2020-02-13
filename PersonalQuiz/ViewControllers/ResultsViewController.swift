//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 11.02.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var resultTitle: UILabel!
    @IBOutlet var resultDescription: UILabel!
    
    // MARK: - Public properties
    var answers: [Answer]?
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)

        guard let answersChoosen = answers else { return }
        let animalType = ResultCalculator.CalculateResult(of: answersChoosen)
        ShowResult(animal: animalType)
    }

    // MARK: - Private methods
    private func ShowResult(animal: AnimalType) {
        resultTitle.text = "Вы - \(animal.rawValue)!"
        resultDescription.text = animal.definition
    }
}
