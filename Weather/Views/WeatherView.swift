//
//  WeatherView.swift
//  Weather
//
//  Created by Bohdan on 08.05.2022.
//

import UIKit

class WeatherView: UIView {
    
    //MARK: - UI
    private let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let weatherImageView: UIImageView = {
       let imageView = UIImageView(image: UIImage(systemName: "cloud.fill"))
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let degreesLabel: UILabel = {
        let label = UILabel()
        label.text = "25 °C"
        label.font = UIFont.systemFont(ofSize: 50)
        label.textColor = .darkGray
        label.textAlignment = .center
        return label
    }()
    
    private let feelsLikeLabel: UILabel = {
        let label = UILabel()
        label.text = "Feels like 20 °C"
        label.textColor = .darkGray
        label.textAlignment = .right
        return label
    }()
    
    private let searchButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = "Odessa"
        config.buttonSize = .large
        config.subtitle = "Choose your city"
        config.image = UIImage(systemName: "magnifyingglass.circle.fill")
        config.imagePlacement = .trailing
        config.imagePadding = 10
        let button = UIButton(configuration: config, primaryAction: nil)
        button.setImage(UIImage(systemName: "magnifyingglass.circle.fill"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let backgroundImage: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage (named: "background")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
    }()
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Layout
    func layout() {
        addSubview(backgroundImage)
        addSubview(mainStackView)
        addSubview(searchButton)
        mainStackView.addArrangedSubview(weatherImageView)
        mainStackView.addArrangedSubview(degreesLabel)
        mainStackView.addArrangedSubview(feelsLikeLabel)
        
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            mainStackView.heightAnchor.constraint(equalToConstant: 250),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            weatherImageView.widthAnchor.constraint(equalToConstant: 150),
            weatherImageView.heightAnchor.constraint(equalToConstant: 150),
            
            feelsLikeLabel.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor, constant: -50),
            
            searchButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            searchButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
}
