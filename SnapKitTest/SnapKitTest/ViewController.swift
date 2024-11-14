//
//  ViewController.swift
//  SnapKitTest
//
//  Created by 유태호 on 11/14/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private var number: Int = 0
    let label = UILabel()
    let minusButton = UIButton()
    let plusButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        label.text = "\(number)"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 45)
        label.textAlignment = .center
        minusButton.setTitle("감소", for: .normal)
        minusButton.backgroundColor = .red
        minusButton.setTitleColor(.white, for: .normal)
        minusButton.layer.cornerRadius = 8
        minusButton.addTarget(self, action: #selector(minusButtonTapped), for: .touchDown)
        plusButton.setTitle("증가", for: .normal)
        plusButton.backgroundColor = .blue
        plusButton.setTitleColor(.white, for: .normal)
        plusButton.layer.cornerRadius = 8
        plusButton.addTarget(self, action: #selector(plusButtonTapped), for: .touchDown)
        
        [label, minusButton, plusButton]
            .forEach { view.addSubview($0) }
        
        label.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.center.equalToSuperview()
        }
        
        minusButton.snp.makeConstraints {
            $0.centerY.equalTo(label.snp.centerY)
            $0.width.equalTo(60)
            $0.height.equalTo(30)
            $0.trailing.equalTo(label.snp.leading).offset(-32)
        }
        
        plusButton.snp.makeConstraints {
            $0.centerY.equalTo(label.snp.centerY)
            $0.width.equalTo(60)
            $0.height.equalTo(30)
            $0.leading.equalTo(label.snp.trailing).offset(32)
        }
    }
    
    @objc
    private func minusButtonTapped() {
        self.number -= 1
        label.text = "\(number)"
    }
    
    @objc
    private func plusButtonTapped() {
        self.number += 1
        label.text = "\(number)"
    }
}

#Preview {
  ViewController()
}
