//
//  ViewController.swift
//  Counter
//
//  Created by Vsevolod on 06.03.2021.
//

import UIKit

class ViewController: UIViewController {

    private var label = UILabel()
    private var tapButton = UIButton()
    private var resetButton = UIButton()
    
    
    private var counter = 0{
        didSet{
            label.text = counter.description
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Counter"
        view.backgroundColor = .green
        
        
        resetButton.setTitle("Reset", for: .normal)
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: resetButton)
        resetButton.addTarget(self, action: #selector(tapReset), for: .touchUpInside)
        
        resetButton.setTitleColor(.red, for: .normal)
        
//        resetButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        
//        label = UILabel(frame: CGRect(x: view.frame.width / 2, y: view.frame.height / 2, width: 80, height: 40))
        
        view.addSubview(label)
        view.addSubview(tapButton)
        
        label.text = counter.description
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        tapButton.backgroundColor = .blue
        tapButton.setTitle("BAM", for: .normal)
        tapButton.translatesAutoresizingMaskIntoConstraints = false
        tapButton.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
            tapButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant:30),
            tapButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    @objc func tapAction() {
        counter += 1
//        label.text = counter.description
        
    }
    @objc func tapReset(){
        counter = 0
    }
    
}

