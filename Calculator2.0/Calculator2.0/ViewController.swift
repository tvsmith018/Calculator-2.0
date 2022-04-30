//
//  ViewController.swift
//  Calculator2.0
//
//  Created by Consultant on 4/27/22.
//

import UIKit

struct place_holder {

    var numbers: [String] = []
    var operations: [String] = []
    var loc = 0
    var opp_loc = 0
}

class ViewController: UIViewController {
    
    var place_hold = place_holder()
    
    // buttons 0 - 9
    lazy var button0: UIButton = create_button(title: "0")
    lazy var button1: UIButton = create_button(title: "1")
    lazy var button2: UIButton = create_button(title: "2")
    lazy var button3: UIButton = create_button(title: "3")
    lazy var button4: UIButton = create_button(title: "4")
    lazy var button5: UIButton = create_button(title: "5")
    lazy var button6: UIButton = create_button(title: "6")
    lazy var button7: UIButton = create_button(title: "7")
    lazy var button8: UIButton = create_button(title: "8")
    lazy var button9: UIButton = create_button(title: "9")
    
    //operators
    lazy var button_add: UIButton = create_button(title: "+")
    lazy var button_subtract: UIButton = create_button(title: "-")
    lazy var button_multiply: UIButton = create_button(title: "*")
    lazy var button_divide: UIButton = create_button(title: "/")
    lazy var button_mod: UIButton = create_button(title: "%")
    lazy var button_equal: UIButton = create_button(title: "=")
    
    //format
    lazy var button_clear: UIButton = create_button(title: "C")
    lazy var button_decimal: UIButton = create_button(title: ".")
    lazy var button_plus_minus: UIButton = create_button(title: "+/-")
    
    //Screen
    lazy var topLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    
    func create_button(title: String) -> UIButton{
        let button = UIButton(frame: .zero)
        button.backgroundColor = .gray
        button.setTitle(title, for: .normal)
        
        if (title == "1") {
            button.tag = 1
        }
        else if (title == "2") {
            button.tag = 2
        }
        else if (title == "3") {
            button.tag = 3
        }
        else if (title == "4") {
            button.tag = 4
        }
        else if (title == "5") {
            button.tag = 5
        }
        else if (title == "6") {
            button.tag = 6
        }
        else if (title == "7") {
            button.tag = 7
        }
        else if (title == "8") {
            button.tag = 8
        }
        else if (title == "9") {
            button.tag = 9
        }
        else if (title == "0") {
            button.tag = 0
        }
        else if (title == "+") {
            button.tag = 11
        }
        else if (title == "-") {
            button.tag = 12
        }
        else if (title == "*") {
            button.tag = 13
        }
        else if (title == "/") {
            button.tag = 14
        }
        else if (title == "%") {
            button.tag = 15
        }
        else if (title == ".") {
            button.tag = 16
        }
        else if (title == "=") {
            button.tag = 17
        }
        else if (title == "C") {
            button.tag = 18
        }
        else if (title == "+/-") {
            button.tag = 19
        }
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(self.buttonClicked), for: .touchUpInside)
        
        return button
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        self.setUpUI()
    }
    
    private func setUpUI() {
        
        let hStack1 = UIStackView(frame: .zero)
        hStack1.translatesAutoresizingMaskIntoConstraints = false
        hStack1.axis = .horizontal
        hStack1.spacing = 8
        hStack1.distribution = .fillEqually
        hStack1.isLayoutMarginsRelativeArrangement = true
        
        let hStack2 = UIStackView(frame: .zero)
        hStack2.translatesAutoresizingMaskIntoConstraints = false
        hStack2.axis = .horizontal
        hStack2.spacing = 8
        hStack2.distribution = .fillEqually
        hStack2.isLayoutMarginsRelativeArrangement = true
        
        let hStack3 = UIStackView(frame: .zero)
        hStack3.translatesAutoresizingMaskIntoConstraints = false
        hStack3.axis = .horizontal
        hStack3.spacing = 8
        hStack3.distribution = .fillEqually
        hStack3.isLayoutMarginsRelativeArrangement = true
        
        let hStack4 = UIStackView(frame: .zero)
        hStack4.translatesAutoresizingMaskIntoConstraints = false
        hStack4.axis = .horizontal
        hStack4.spacing = 8
        hStack4.distribution = .fillEqually
        hStack4.isLayoutMarginsRelativeArrangement = true
        
        let hStack5 = UIStackView(frame: .zero)
        hStack5.translatesAutoresizingMaskIntoConstraints = false
        hStack5.axis = .horizontal
        hStack5.spacing = 8
        hStack5.distribution = .fillEqually
        hStack5.isLayoutMarginsRelativeArrangement = true
        
        let vStack = UIStackView(frame: .zero)
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.axis = .vertical
        vStack.spacing = 8
        vStack.distribution = .fillEqually
        vStack.isLayoutMarginsRelativeArrangement = true
        
        
        
        hStack1.addArrangedSubview(self.button0)
        hStack1.addArrangedSubview(self.button_clear)
        hStack1.addArrangedSubview(self.button_equal)
        
        hStack2.addArrangedSubview(self.button1)
        hStack2.addArrangedSubview(self.button2)
        hStack2.addArrangedSubview(self.button3)
        hStack2.addArrangedSubview(self.button_decimal)
        
        hStack3.addArrangedSubview(self.button4)
        hStack3.addArrangedSubview(self.button5)
        hStack3.addArrangedSubview(self.button6)
        hStack3.addArrangedSubview(self.button_plus_minus)
        
        hStack4.addArrangedSubview(self.button7)
        hStack4.addArrangedSubview(self.button8)
        hStack4.addArrangedSubview(self.button9)
        hStack4.addArrangedSubview(self.button_mod)
        
        hStack5.addArrangedSubview(self.button_add)
        hStack5.addArrangedSubview(self.button_subtract)
        hStack5.addArrangedSubview(self.button_multiply)
        hStack5.addArrangedSubview(self.button_divide)
        
        self.topLabel.backgroundColor = .gray
        
        vStack.addArrangedSubview(hStack5)
        vStack.addArrangedSubview(hStack4)
        vStack.addArrangedSubview(hStack3)
        vStack.addArrangedSubview(hStack2)
        vStack.addArrangedSubview(hStack1)
        
        self.view.addSubview(self.topLabel)
        self.view.addSubview(vStack)
        
        self.topLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        self.topLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        self.topLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        vStack.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        vStack.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        vStack.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        self.topLabel.bottomAnchor.constraint(equalTo: vStack.topAnchor, constant: -90).isActive = true
        
//        NSLayoutConstraint.activate([
//            self.topLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0.07 * ScreenSize_width),
//            self.topLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant:  -0.07 * ScreenSize_width),
//            self.topLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant:  0.15 * ScreenSize_height),
//
//
//            vStack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0.07 * ScreenSize_width),
//            vStack.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant:  -0.07 * ScreenSize_width),
//
//            vStack.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant:  0.15 * ScreenSize_height),
//
//        ])
    }
    
    @objc func buttonClicked(_ sender: UIButton){
        
        if (sender.tag == 1) {
            store_num(num_key: "1")
        }
        else if (sender.tag == 2) {
            store_num(num_key: "2")
        }
        else if (sender.tag == 3) {
            store_num(num_key: "3")
        }
        else if (sender.tag == 4) {
            store_num(num_key: "4")
        }
        else if (sender.tag == 5) {
            store_num(num_key: "5")
        }
        else if (sender.tag == 6) {
            store_num(num_key: "6")
        }
        else if (sender.tag == 7) {
            store_num(num_key: "7")
        }
        else if (sender.tag == 8) {
            store_num(num_key: "8")
        }
        else if (sender.tag == 9) {
            store_num(num_key: "9")
        }
        else if (sender.tag == 0) {
            store_num(num_key: "0")
        }
        else if (sender.tag == 11) {
            store_operation(opp_key: "+")
        }
        else if (sender.tag == 12) {
            store_operation(opp_key: "-")
        }
        else if (sender.tag == 13) {
            store_operation(opp_key: "*")
        }
        else if (sender.tag == 14) {
            store_operation(opp_key: "/")
        }
        else if (sender.tag == 15) {
            self.topLabel.text = "Working on button please start over"
            self.place_hold.numbers.removeAll()
            self.place_hold.operations.removeAll()
            self.place_hold.loc = 0
            self.place_hold.opp_loc = 0
            
            //store_operation(opp_key: "%")
        }
        else if (sender.tag == 16) {
            decimal_opp()
        }
        else if (sender.tag == 17) {
            equal_opp()
        }
        else if (sender.tag == 18) {
            clear()
        }
        else if (sender.tag == 19) {
            plus_minus_opp()
        }
        
        func store_num(num_key: String){
            if (self.place_hold.numbers.isEmpty){
                self.place_hold.numbers.append(num_key)
            }
            else if (self.place_hold.numbers[self.place_hold.loc] == "0") {
                self.place_hold.numbers[self.place_hold.loc] = num_key
            }
            else{
                self.place_hold.numbers[self.place_hold.loc] += num_key
            }
            
            self.topLabel.text = self.place_hold.numbers[self.place_hold.loc]
        }
        
        func store_operation(opp_key: String){
            
            if (self.place_hold.numbers.indices.contains(0) == false) {
                if (opp_key == "+") {
                    self.topLabel.text = "Please Choose an inital number to add."
                }
                else if (opp_key == "-") {
                    self.topLabel.text = "Please Choose an inital number to subtract."
                }
                else if (opp_key == "*") {
                    self.topLabel.text = "Please Choose an inital number to multiply"
                }
                else if (opp_key == "/") {
                    self.topLabel.text = "Please Choose an inital number to divide."
                }
                else {
                    self.topLabel.text = "Please Choose an inital number to find the modulus"
                }
            }
            
            print(self.place_hold.numbers)
            print(self.place_hold.operations)
            
            if self.place_hold.operations.indices.contains(self.place_hold.opp_loc) == false && self.place_hold.numbers.indices.contains(self.place_hold.loc) == true && self.place_hold.numbers[self.place_hold.loc] != ""{
                if (opp_key == "+")
                {
                    self.topLabel.text = "+"
                    self.place_hold.operations.append("+")
                    self.place_hold.opp_loc += 1
                }
                else if (opp_key == "-")
                {
                    self.topLabel.text = "-"
                    self.place_hold.operations.append("-")
                    self.place_hold.opp_loc += 1
                }
                else if (opp_key == "*")
                {
                    self.topLabel.text = "*"
                    self.place_hold.operations.append("*")
                    self.place_hold.opp_loc += 1
                }
                else if (opp_key == "/")
                {
                    self.topLabel.text = "/"
                    self.place_hold.operations.append("/")
                    self.place_hold.opp_loc += 1
                }
                else
                {
                    self.topLabel.text = "%"
                    self.place_hold.operations.append("%")
                    self.place_hold.opp_loc += 1
                }
                
                self.place_hold.numbers.append("")
                self.place_hold.loc += 1
            }
        }
        
        func clear(){
            self.place_hold.numbers.removeAll()
            self.place_hold.operations.removeAll()
            self.place_hold.loc = 0
            self.place_hold.opp_loc = 0
            self.topLabel.text = ""
        }
        
        func decimal_opp(){
            if (self.place_hold.numbers.isEmpty){
                self.place_hold.numbers.append("0.")
            }
            
            if (self.place_hold.numbers[self.place_hold.loc] == ""){
                self.place_hold.numbers[self.place_hold.loc] = "0."
            }
            
            if self.place_hold.numbers[self.place_hold.loc].contains(".") == false{
                self.place_hold.numbers[self.place_hold.loc] += "."
            }
            self.topLabel.text = self.place_hold.numbers[self.place_hold.loc]
        }
        
        func plus_minus_opp(){
            if (self.place_hold.numbers.indices.contains(self.place_hold.loc) == false ){
                self.place_hold.numbers.append("-")
                self.topLabel.text = place_hold.numbers[place_hold.loc]
            }
            else{
                if self.place_hold.numbers[self.place_hold.loc].contains("-") == false{
                    self.place_hold.numbers[self.place_hold.loc] = "-" + self.place_hold.numbers[self.place_hold.loc]
                    self.topLabel.text = self.place_hold.numbers[self.place_hold.loc]
                }
                else{
                    self.place_hold.numbers[self.place_hold.loc].removeFirst()
                    self.topLabel.text = self.place_hold.numbers[self.place_hold.loc]
                }
            }
        }
        
        func equal_opp(){
            if (place_hold.numbers.indices.contains(0) == false || place_hold.numbers.indices.contains(1) == false  || place_hold.numbers[place_hold.loc] == "") {
                
                self.topLabel.text = "Please create a equation"
            }
            else{
                self.topLabel.text = ""
            
                var index1: Int = 0
                var num1: String = "0.0"
                var num2: String = "0.0"
                var opp_sign: String = ""
                var combine = 0.0
                
                while self.place_hold.numbers.indices.count > 0 {
            
                    if let index = self.place_hold.operations.firstIndex(of: "*") {
                        index1 = index
                        num1 = self.place_hold.numbers[index1]
                        num2 = self.place_hold.numbers[index1+1]
                        opp_sign = "*"
                
                    }
                    else if let index = self.place_hold.operations.firstIndex(of: "/"){
                        index1 = index
                        num1 = self.place_hold.numbers[index1]
                        num2 = self.place_hold.numbers[index1+1]
                        opp_sign = "/"
                    }
                    else if let index = self.place_hold.operations.firstIndex(of: "+"){
                        index1 = index
                        num1 = self.place_hold.numbers[index1]
                        num2 = self.place_hold.numbers[index1+1]
                        opp_sign = "+"
                    }
                    else if let index = place_hold.operations.firstIndex(of: "-"){
                        index1 = index
                        num1 = self.place_hold.numbers[index1]
                        num2 = self.place_hold.numbers[index1+1]
                        opp_sign = "-"
                    }
                    if (num1 == "-" || num2 == "-"){
                        self.topLabel.text = "one of your numbers are invalid start over please"
                        self.place_hold.numbers.removeAll()
                        self.place_hold.operations.removeAll()
                        self.place_hold.loc = 0
                        self.place_hold.opp_loc = 0
                        break
                    }
                    let x1 = Double(num1)!
                    let x2 = Double(num2)!
            
                    switch opp_sign {
                    case "*":
                        combine = x1 * x2
                    case "/":
                        combine = x1 / x2
                    case "+":
                        combine = x1 + x2
                    default:
                        combine = x1 - x2
                    }
                    
                    if (place_hold.numbers.indices.count > 1){
                        self.place_hold.numbers.remove(at:index1 + 1)
                    }
                    self.place_hold.numbers.remove(at:index1)
                    if (place_hold.operations != []){
                        self.place_hold.operations.remove(at:index1)
                    }
                    
                    if (place_hold.numbers != []){
                        self.place_hold.numbers.insert(String(combine), at: index1)
                    }
                    
                    if (place_hold.numbers == []) {
                        self.place_hold.loc = 0
                        self.place_hold.opp_loc = 0
                        topLabel.text = String(combine)
                    }
                }
            }
        }
    }
}
