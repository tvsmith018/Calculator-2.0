//
//  ViewController.swift
//  Calculator2.0
//
//  Created by Consultant on 4/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    // Number buttons 0-9
    lazy var button0: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "0"
        button.titleLabel?.textColor = .black
        button.backgroundColor = .gray
        return button
    }()
    lazy var button1: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "1"
        button.titleLabel?.textColor = .black
        button.backgroundColor = .gray
        return button
    }()
    
    lazy var button2: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "2"
        return button
    }()
    
    lazy var button3: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "3"
        return button
    }()
    
    lazy var button4: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "4"
        return button
    }()
    
    lazy var button5: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "5"
        return button
    }()
    
    lazy var button6: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "6"
        return button
    }()
    
    lazy var button7: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "7"
        return button
    }()
    
    lazy var button8: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "8"
        return button
    }()
    
    lazy var button9: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "9"
        return button
    }()
    
    //Display Screen
    lazy var displayScreen: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    //operations
    lazy var addition_button: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "+"
        return button
    }()
    
    lazy var subtraction_button: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "-"
        return button
    }()
    
    lazy var multiplication_button: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "*"
        return button
    }()
    
    lazy var division_button: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "/"
        return button
    }()
    
    lazy var modulus_button: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "%"
        return button
    }()
    
    lazy var decimal_button: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "."
        return button
    }()
    
    lazy var positive_negative_button: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "+/-"
        return button
    }()
    
    lazy var clear_button: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "C"
        return button
    }()
    
    lazy var equal_button: UIButton = {
        let button = UIButton(frame:.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "="
        return button
    }()
    
    var models: [CalculatorModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        self.setUpUI()
    }
    
    private func setUpUI() {
        let hStack = UIStackView(frame: .zero)
        hStack.translatesAutoresizingMaskIntoConstraints = false
        hStack.axis = .horizontal
        hStack.spacing = 8
        hStack.distribution = .fill
        
        let vStack = UIStackView(frame: .zero)
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.axis = .vertical
        vStack.spacing = 8
        vStack.distribution = .fillEqually
        
        vStack.addArrangedSubview(self.button0)
        vStack.addArrangedSubview(self.button1)
        
        hStack.addArrangedSubview(vStack)
        
        self.view.addSubview(hStack)
    }

}

