//
//  MainViewController.swift
//  Currency Converter
//
//  Created by Kate on 12.04.2023.
//

import UIKit
import SwifterSwift
import Then

final class MainViewController: UIViewController {
    
    // MARK: - Private Props
    
    private let moduleView = MainView()
    let apiService = ApiService()

    // MARK: - LifeCycle
    
    override func loadView() {
        view = moduleView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let responce = apiService.makeRequest()
        
        moduleView.render(.init(usd: "55"))
    }
}
