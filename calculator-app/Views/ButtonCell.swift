//
//  ButtonCell.swift
//  calculator-app
//
//  Created by Jackson Matheus on 29/11/23.
//

import Foundation
import UIKit

class ButtonCell: UICollectionViewCell {
    static let identifier = "ButtonCell"
    
    private(set) var calculatorButton: CalculatorButton!
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 40, weight: .regular)
        label.text = "Error"
        
        return label
    }()
    
    public func configure(with button: CalculatorButton) {
        self.calculatorButton = button
        self.titleLabel.text = button.title
        self.backgroundColor = button.color
        
    }
    
    
    
}
