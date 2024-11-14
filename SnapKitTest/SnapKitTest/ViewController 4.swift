//
//  ViewController.swift
//  SnapKitTest
//
//  Created by 유태호 on 11/14/24.
//

import UIKit
import SnapKit

class ViewController4: UIViewController {
    
    let label = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()
        configureUI2()
    }
    
    private func configureUI() {
        view.backgroundColor = .white
        label.text = "안녕하세요"
        label.textColor = .black
        
        view.addSubview(label)  // 뷰 입장에서 라벨이 자식, 라벨입장에서 뷰가 부모
        
        // Snapkit 적용 코드작성방법
        label.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.height.equalTo(40)
//            $0.centerX.equalToSuperview()   // 뷰, 라벨의 centerX가 같은값을 가지게 하는 코드
//            $0.centerY.equalToSuperview()   // 뷰, 라벨의 centerY가 같은값을 가지게 하는 코드
            $0.center.equalToSuperview()    // centerX, centerY를 통일
            /**
             // (1) 축약하지 않은 코드.
             label.snp.makeConstraints { make in
                 make.width.equalTo(80)
                 make.height.equalTo(40)
                 make.centerX.equalToSuperview()
                 make.centerY.equalToSuperview()
             }

             // (2) 축약할 수 있으니 이렇게 축약합시다.
             label.snp.makeConstraints {
                 $0.width.equalTo(80)
                 $0.height.equalTo(40)
                 $0.centerX.equalToSuperview()
                 $0.centerY.equalToSuperview()
             }
             */
        }
    }
    
    private func configureUI2() {
        view.backgroundColor = .white
        // 버튼 타이틀 지정.
        button.setTitle("Click", for: .normal)
        // 버튼 타이틀 컬러 지정.
        button.setTitleColor(.white, for: .normal)
        // 버튼 색상 지정.
        button.backgroundColor = .red
        // 버튼 테두리 둥글게 지정.
        button.layer.cornerRadius = 10
        // 버튼 클릭 이벤트 추가.
        button.addTarget(self, action: #selector(buttonClicked), for: .touchDown)
        
        view.addSubview(button)
        button.snp.makeConstraints {
            $0.width.equalTo(120)
            $0.height.equalTo(60)
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
    }
    
    // #selector() 안에 넣기 위해서는 @objc 키워드 붙여야 함.
    @objc
    private func buttonClicked() {
        print("버튼이 클릭되었음.")
    }


}

#Preview {
  ViewController4()
}
