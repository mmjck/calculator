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
        label.font = .systemFont(ofSize: 40, weight: .bold)
        label.text = "Error"
        
        return label
    }()
    
    public func configure(with viewModel: CalculatorButton) {
        print(viewModel.title)
        self.calculatorButton = viewModel
        self.titleLabel.text = viewModel.title
        self.titleLabel.textColor = .white
        self.backgroundColor = viewModel.color
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(titleLabel)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
