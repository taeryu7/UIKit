//
//  ViewController.swift
//  SnapKitTest
//
//  Created by 유태호 on 11/14/24.
//

import UIKit
import SnapKit

class ViewController3: UIViewController {
    
    let imageView = UIImageView()
    let imageView2 = UIImageView()
    let label = UILabel()
    let label2 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .white
        imageView.image = UIImage(named: "pepe")
        imageView.backgroundColor = .black
        imageView.contentMode = .scaleAspectFit
        label.text = "개구리"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        imageView2.image = UIImage(named: "pepe")
        imageView2.backgroundColor = .black
        imageView2.contentMode = .scaleAspectFit
        label2.text = "깨구리"
        label2.textColor = .black
        label2.font = UIFont.boldSystemFont(ofSize: 30)
        
        [imageView, label, imageView2, label2]
            .forEach { view.addSubview($0) }
        
        imageView.snp.makeConstraints {
            $0.width.equalTo(160)
            $0.height.equalTo(160)
            $0.leading.equalToSuperview().inset(16)
            $0.centerY.equalToSuperview()
        }
        
        label.snp.makeConstraints {
            $0.centerX.equalTo(imageView.snp.centerX)
            $0.top.equalTo(imageView.snp.bottom).offset(16)
        }
        
        imageView2.snp.makeConstraints {
            $0.width.equalTo(160)
            $0.height.equalTo(160)
            $0.trailing.equalToSuperview().inset(16)
            $0.centerY.equalToSuperview()
        }
        
        label2.snp.makeConstraints {
            $0.centerX.equalTo(imageView2.snp.centerX)
            $0.top.equalTo(imageView2.snp.bottom).offset(16)
        }
    }
}

#Preview {
  ViewController3()
}
