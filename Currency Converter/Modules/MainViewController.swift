//
//  MainViewController.swift
//  Currency Converter
//
//  Created by Kate on 12.04.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    // MARK: - Private Props
    
    private let moduleView = MainView()

    // MARK: - LifeCycle
    
    override func loadView() {
        view = moduleView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
