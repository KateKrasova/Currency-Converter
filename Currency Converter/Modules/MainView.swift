//
//  MainView.swift
//  Currency Converter
//
//  Created by Kate on 12.04.2023.
//

import UIKit
import SnapKit
import SwifterSwift
import Then

final class MainView: UIView {
    
    // MARK: - Props

    struct Props: Equatable {
        let usd: String
    }
    
    // MARK: - Private Props

    private var props: Props?

    // MARK: - Views
    
    private lazy var usdLabel = UILabel().then {
        $0.textColor = .black
        $0.text = "Курс доллара сегодня: "
    }
    
    private lazy var textfield = UITextField().then {
        $0.placeholder = "Введите нужную сумму"
        $0.textColor = .black
        $0.backgroundColor = .systemBackground
        $0.borderStyle = .roundedRect
    }
    
    private lazy var countButton = UIButton(type: .system).then {
        $0.setTitle("Посчитать", for: .normal)
        $0.addAction(UIAction { _ in
            self.resultLabel.text = self.textfield.text
        },
            for: .touchUpInside)
    }
    
    private lazy var resultLabel = UILabel().then {
        $0.text = "Здесь будет результат"
        $0.textColor = .black
    }
    
    private lazy var stack = UIStackView(
        arrangedSubviews: [usdLabel, textfield, countButton, resultLabel],
        axis: .vertical,
        spacing: 20,
        alignment: .center)
    
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

// MARK: - Public Methods

extension MainView {
    func render (_ props: Props) {
        guard self.props != props else { return }
        self.props = props
    
        usdLabel.text = "Курс доллара сегодня: \(props.usd)"
    }
}

// MARK: - Private Methods

private extension MainView {
    /// Настройка View
    func setup() {
        backgroundColor = .white
    }
    
    /// Добавление Views
    func setupViews() {
        addSubviews([
            stack
        ])
    }
    
    /// Установка констреинтов
    func setupConstraints() {
        stack.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}

// MARK: - Constants

private extension MainView {
    enum Constants {
    }
}
