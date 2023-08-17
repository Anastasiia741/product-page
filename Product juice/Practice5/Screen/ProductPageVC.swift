//  ViewController.swift
//  Practice5
//  Created by Анастасия Набатова on 29/5/23.

import UIKit

final class ProductPageVC: UIViewController {
    private let imageView = UIImageView()
    private let titleLabel = UILabel()
    private let priceLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let titleGuruLabel = UILabel()
    private let buyButton = UIButton(type: .system)
    private let informView = UIView()
    private let titleView = UILabel()
    private let viewDescriptoinLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        setImageView()
        setTitleLabel()
        setTitlePrice()
        setTitleDescription()
        setTitleGuru()
        setupButton()
        setupInformView()
    }
}

extension ProductPageVC {
    
    func setImageView() {
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "1")
        imageView.contentMode = .scaleAspectFill
        
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            imageView.heightAnchor.constraint(equalToConstant: 370)
        ])
        
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.orange.cgColor
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
    }
    
    func setTitleLabel() {
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text =  "Апельсиновый сок"
        
        let font = UIFont.systemFont(ofSize: 27, weight: .bold)
        let fontDescriptor = font.fontDescriptor
        
        let condensedFontDescriptor = fontDescriptor.withDesign(.rounded)
        let condensedFont = UIFont(descriptor: condensedFontDescriptor!, size: 0)
        
        titleLabel.font = condensedFont
        titleLabel.textColor = .black
        
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 450),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
    
    func setTitlePrice() {
        
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.text = "1 cтакан - $1"
        
        let font = UIFont.systemFont(ofSize: 17, weight:.medium)
        let fontDescriptor = font.fontDescriptor
        
        let condensedFontDescriptor = fontDescriptor.withDesign(.rounded)
        let condensedFont = UIFont(descriptor: condensedFontDescriptor!, size: 0)
        
        priceLabel.font = condensedFont
        priceLabel.textColor = .orange
        
        view.addSubview(priceLabel)
        
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 490),
            priceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            priceLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
    
    func setTitleDescription() {
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.text = "В апельсиновом соке содержится много витамина C: в одном стакане содержится почти суточная норма для взрослого человека."
        descriptionLabel.numberOfLines = 5
        
        let font = UIFont.systemFont(ofSize: 17, weight: .medium)
        let fontDescriptor = font.fontDescriptor
        
        let condensedFontDescriptor = fontDescriptor.withDesign(.rounded)
        let condensedFont = UIFont(descriptor: condensedFontDescriptor!, size: 0)
        
        descriptionLabel.font = condensedFont
        descriptionLabel.textColor = .black
        
        view.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 520),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
        ])
    }
    
    func setTitleGuru() {
        
        titleGuruLabel.translatesAutoresizingMaskIntoConstraints = false
        titleGuruLabel.text = "www.it-guru.kz"
        
        let font = UIFont.systemFont(ofSize: 17, weight: .medium)
        let fontDescriptor = font.fontDescriptor
        
        let condensedFontDescriptor = fontDescriptor.withDesign(.rounded)
        let condensedFont = UIFont(descriptor: condensedFontDescriptor!, size: 0)
        
        titleGuruLabel.font = condensedFont
        titleGuruLabel.textColor = .lightGray
        titleGuruLabel.isUserInteractionEnabled = true
        
        view.addSubview(titleGuruLabel)
        
        NSLayoutConstraint.activate([
            titleGuruLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 610),
            titleGuruLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleGuruLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
        ])
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(openWebsite))
        titleGuruLabel.addGestureRecognizer(tapGesture)
    }
    
    func setupButton() {
        
        buyButton.translatesAutoresizingMaskIntoConstraints = false
        buyButton.setTitle("Заказать сейчас", for: .normal)
        buyButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        buyButton.backgroundColor = UIColor(named: "orange")
        buyButton.layer.cornerRadius = 5
        buyButton.tintColor = .white
        
        buyButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        view.addSubview(buyButton)
        
        NSLayoutConstraint.activate([
            buyButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            buyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            buyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            buyButton.heightAnchor.constraint(equalToConstant: 50),
            buyButton.widthAnchor.constraint(equalToConstant: 200)])
    }
    
    func setupInformView() {
        
        informView.translatesAutoresizingMaskIntoConstraints = false
        informView.backgroundColor = .darkGray
        informView.layer.cornerRadius = 6
        informView.alpha = 0.0
        
        titleView.translatesAutoresizingMaskIntoConstraints = false
        titleView.text = "Заказ оформлен"
        titleView.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleView.textColor = .orange
        
        viewDescriptoinLabel.translatesAutoresizingMaskIntoConstraints = false
        viewDescriptoinLabel.text = "Ждите звонка"
        viewDescriptoinLabel.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        viewDescriptoinLabel.textColor = .white
        
        informView.addSubview(titleView)
        informView.addSubview(viewDescriptoinLabel)
        
        NSLayoutConstraint.activate([
            titleView.topAnchor.constraint(equalTo: informView.topAnchor, constant: 20),
            titleView.leadingAnchor.constraint(equalTo: informView.leadingAnchor, constant: 20),
            titleView.trailingAnchor.constraint(equalTo: informView.trailingAnchor, constant: -20),
            
            viewDescriptoinLabel.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 5),
            viewDescriptoinLabel.leadingAnchor.constraint(equalTo: informView.leadingAnchor, constant: 20),
            viewDescriptoinLabel.trailingAnchor.constraint(equalTo: informView.trailingAnchor, constant: -20),
            viewDescriptoinLabel.bottomAnchor.constraint(equalTo: informView.bottomAnchor, constant: -30)])
        
        view.addSubview(informView)
        
        NSLayoutConstraint.activate([
            informView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            informView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            informView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            informView.widthAnchor.constraint(equalToConstant: 200),
            informView.heightAnchor.constraint(equalToConstant: 100)])
    }
    
    @objc func buttonTapped() {
        
        buyButton.isHidden = true
        
        informView.frame.origin.y = view.frame.height
        let heightInf = view.frame.height - informView.frame.height
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
            self.informView.frame.origin.y = heightInf - 30
            self.informView.alpha = 1.0
            
        }, completion: { _ in
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                UIView.animate(withDuration: 0.5, animations: {
                    // Fade out the informView
                    self.informView.alpha = 0.0
                }, completion: { _ in
                    self.buyButton.isHidden = true
                })
            }
        })
    }
    
    @objc func openWebsite() {
        
        guard let url = URL(string: "https://www.it-guru.kz") else {
            return
        }
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}









