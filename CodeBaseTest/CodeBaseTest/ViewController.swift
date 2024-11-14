//
//  ViewController.swift
//  CodeBaseTest
//
//  Created by 유태호 on 11/13/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let label = UILabel()           // 라벨 호출
    let button = UIButton()         // 버튼 호출
    let imageView = UIImageView()   // 이미지뷰 호출

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()
        print("Hello, World!")
    }
    
    private func configureUI() {
        view.backgroundColor = .white   // 뷰의 배경색.하얀색
        label.text = "Hello, World!"    // 라벨내 텍스트내용 지정 = "Hello,World"
        label.textColor = .black        // 텍스트 컬러 지정.검정색
        label.translatesAutoresizingMaskIntoConstraints = false // 오토레이아웃을 활성화 시키기위해서 반드시 작성이 필요한 코드
        
        view.addSubview(label) // 서브뷰로 라벨호출, 해당 코드가 없으면 Label이 출력되지 않음. 이거는 무조건 넣어야된다!
        NSLayoutConstraint.activate([   //제약조건 선언
            
            // equalTo : equalToConstant의 값과 앞에 있는 widthAnchor.constraint의 값과 같게 세팅한다
            label.widthAnchor.constraint(equalToConstant: 80),      // Label의 width 80으로 세팅
            label.heightAnchor.constraint(equalToConstant: 40),     // Label의 height 40으로 세팅
            
            // equalTo: view centerXAnchor 와 label.centerXAnchor를 똑같은 값으로 가져간다
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),    // 라벨을 X축 기준 중앙에 배치
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)     // 라벨을 Y축 기준 중앙에 배치
            ])
            
        button.setTitle("Click", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        
        view.addSubview(button)
        NSLayoutConstraint.activate([
            
            button.widthAnchor.constraint(equalToConstant: 120),
            button.heightAnchor.constraint(equalToConstant: 80),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        
        
        imageView.image = UIImage(named: "pepe.jpg")    // imageView 이미지 지정
        imageView.backgroundColor = .black
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            
            imageView.widthAnchor.constraint(equalToConstant: 120),
            imageView.heightAnchor.constraint(equalToConstant: 120),
            
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

}

#Preview {
  ViewController()
}
