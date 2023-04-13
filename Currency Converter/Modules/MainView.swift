//
//  MainView.swift
//  Currency Converter
//
//  Created by Kate on 12.04.2023.
//

import UIKit

final class MainView: UIView {
    
    // - MARK: Props
    
    struct Props: Equatable {
    }
    
    // MARK: - Private Props
    
    private var props: Props?
    
    // MARK: - Views
    
    // MARK: - LifeCycle
    
    init() {
        super.init(frame: .zero)
        
        setup()
        setupViews()
        setupConstraints()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Internal Methods

extension MainView {
    func render(_ props: Props) {
        guard self.props != props else { return }
        self.props = props
    }
}

// MARK: - Private Methods

private extension MainView {
    /// Настройка View
    func setup() {
        backgroundColor = .red
    }
    
    /// Добавление Views
    func setupViews() {
    }
    
    /// Установка констреинтов
    func setupConstraints() {
    }
}

// MARK: - Constants

private extension MainView {
    enum Constants {
    }
}
