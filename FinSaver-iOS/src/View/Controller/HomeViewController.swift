//
//  ViewController.swift
//  FinSaver-iOS
//
//  Created by Michel Jaejin Kim on 26/07/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var purpleCardView: UIView!
    var planTitleLabel: UILabel!
    var planValueLabel: UILabel!
    var detailLabel: UILabel!
    var tableView: UITableView!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        purpleCardView = UIView()
        purpleCardView.translatesAutoresizingMaskIntoConstraints = false
        purpleCardView.layer.cornerRadius = 15
        purpleCardView.backgroundColor = .systemPurple
        view.addSubview(purpleCardView)
        
        planTitleLabel = UILabel()
        planTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        planTitleLabel.font = UIFont.boldSystemFont(ofSize: 22)
        planTitleLabel.numberOfLines = 0
        planTitleLabel.textColor = .white
        planTitleLabel.text = "Reserva de emergencia"
        view.addSubview(planTitleLabel)
        
        planValueLabel = UILabel()
        planValueLabel.translatesAutoresizingMaskIntoConstraints = false
        planValueLabel.font = UIFont.boldSystemFont(ofSize: 48)
        planValueLabel.textColor = .white
        planValueLabel.text = "R$ 300,00"
        view.addSubview(planValueLabel)
        
        tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.identifier)
        view.addSubview(tableView)
        
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Novo Plano", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.backgroundColor = .systemPurple
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(newPlanTapped), for: .touchUpInside)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            // Purple CardView Constraints
            purpleCardView.topAnchor.constraint(equalTo: view.topAnchor),
            purpleCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            purpleCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            purpleCardView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4),
            
            // PlanTitleLabel Constraints
            planTitleLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 30),
            planTitleLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            
            // PlanValueLabel Constraints
            planValueLabel.centerYAnchor.constraint(equalTo: purpleCardView.centerYAnchor, constant: 20),
            planValueLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            
            // TableView Constraints
            tableView.topAnchor.constraint(equalTo: purpleCardView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            
            // Button Constraints
            button.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20),
            button.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 20),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -20)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @objc func newPlanTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToNewPlanScreen", sender: self)
    }
    
    
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as! HomeTableViewCell
        cell.configure(title: "Reserva de Emergencia", value: "R$ 15.000,00")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
