//
//  ViewController.swift
//  SnapKitTest
//
//  Created by 유태호 on 11/14/24.
//

import UIKit
import SnapKit

class ViewController2: UIViewController {
    
    let imageView = UIImageView()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
        
        [imageView, label]                      // 추가하고 싶은 뷰들들 집어넣음
            .forEach { view.addSubview($0) }    //forEach문을 사용해서 뷰를 호출
        
        imageView.snp.makeConstraints {
            $0.width.equalTo(300)
            $0.height.equalTo(300)
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
        
        label.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(imageView.snp.bottom).offset(16) // 라벨의 탑 값을 이미지뷰의 16만큼 떨어트린다.
        }
    }

}

#Preview {
  ViewController2()
}
