//
//  NewPlanViewController.swift
//  FinSaver-iOS
//
//  Created by Michel Jaejin Kim on 28/07/23.
//

import UIKit

class NewPlanViewController: UIViewController {
    
    var planTitleLabel: UILabel!
    var planValueField: UITextField!
    var jurosLabel: UILabel!
    var jurosValueField: UITextField!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .systemPurple
        
        planTitleLabel = UILabel()
        planTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        planTitleLabel.font = UIFont.boldSystemFont(ofSize: 22)
        planTitleLabel.numberOfLines = 0
        planTitleLabel.textColor = .white
        planTitleLabel.text = "Reserva de emergencia"
        view.addSubview(planTitleLabel)
        
        planValueField = UITextField()
        planValueField.translatesAutoresizingMaskIntoConstraints = false
        planValueField.placeholder = "Ex: R$ 15.000,00"
        planValueField.keyboardType = .decimalPad
        planValueField.textAlignment = .center
        planValueField.textColor = .white
        planValueField.font = UIFont.boldSystemFont(ofSize: 44)
        view.addSubview(planValueField)
        
        jurosLabel = UILabel()
        jurosLabel.translatesAutoresizingMaskIntoConstraints = false
        jurosLabel.font = UIFont.boldSystemFont(ofSize: 22)
        jurosLabel.textColor = .white
        jurosLabel.text = "Taxa de juros:"
        view.addSubview(jurosLabel)
        
        jurosValueField = UITextField()
        jurosValueField.translatesAutoresizingMaskIntoConstraints = false
        jurosValueField.placeholder = "Ex: 0.0"
        jurosValueField.borderStyle = .roundedRect
        jurosValueField.backgroundColor = .systemPurple
        jurosValueField.layer.borderWidth = 2.0
        jurosValueField.layer.cornerRadius = 10
        jurosValueField.layer.borderColor = UIColor.white.cgColor
        jurosValueField.keyboardType = .decimalPad
        jurosValueField.textAlignment = .center
        jurosValueField.textColor = .white
        jurosValueField.font = UIFont.boldSystemFont(ofSize: 22)
        view.addSubview(jurosValueField)
        
        NSLayoutConstraint.activate([
            planTitleLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            planTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            planValueField.topAnchor.constraint(equalTo: planTitleLabel.bottomAnchor, constant: 20),
            planValueField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            jurosLabel.topAnchor.constraint(equalTo: planValueField.bottomAnchor, constant: 40),
            jurosLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 20),
            
            jurosValueField.centerYAnchor.constraint(equalTo: jurosLabel.centerYAnchor),
            jurosValueField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -20),
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
