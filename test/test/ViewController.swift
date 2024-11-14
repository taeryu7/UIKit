//
//  ViewController.swift
//  test
//
//  Created by 유태호 on 11/12/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

#Preview {
    
    //스토리보드의 이름을 적어주는것
    let storyboard = UIStoryboard(name: "Main", bundle: nil) //좌측은 파일이름
    
    //스토리보드ID를 바꾼 main이라는 스토리보드를 호출
    let main = storyboard.instantiateViewController(withIdentifier: "main") //스토리보드 아이디
    // instantiateViewController 
    return main
}
