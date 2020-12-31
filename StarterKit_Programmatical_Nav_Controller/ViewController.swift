//
//  ViewController.swift
//  StarterKit_Programmatical_Nav_Controller
//
//  Created by Nishant Bhasin on 2020-12-31.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
        
    // Setup
    private func setup() {
        // Background colour
        view.backgroundColor = .orange
        
        // Navigation controller title
        self.navigationItem.title = "Navigation Title"
        
        // Navigation button
        
        // right
        let rightNavButton = UIBarButtonItem()
        rightNavButton.action = #selector(rightNavButtonAction)
        rightNavButton.target = self
        rightNavButton.title = "Right"
        self.navigationItem.rightBarButtonItem = rightNavButton
        
        // left
        let leftNavButton = UIBarButtonItem()
        leftNavButton.action = #selector(leftNavButtonAction)
        leftNavButton.target = self
        leftNavButton.title = "Left"
        self.navigationItem.leftBarButtonItem = leftNavButton
    }
    
    //MARK: Navigation button actions
    
    @objc private func rightNavButtonAction() {
        let alert = UIAlertController(title: "Navigation Alert", message: "Right navigation button pressed.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: {
            action in
                 // Dismiss
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc private func leftNavButtonAction() {
        let alert = UIAlertController(title: "Navigation Alert", message: "Left navigation button pressed.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: {
            action in
                 // Dismiss
        }))
        self.present(alert, animated: true, completion: nil)
    }
}
