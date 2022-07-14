//
//  ViewController.swift
//  Neologism_SeSACWeek1
//
//  Created by KYUNGSUP GO on 2022/07/09.
//

import UIKit

class ViewController: UIViewController {
    
    

    

    @IBOutlet var hashtag_Button: [UIButton]!
    
    @IBOutlet weak var neologism_Translate_Outlet: UILabel!
    
    // MARK: - Neologism dictionary
    let voca : [String: String] = [
        "쫌쫌따리" : "아주 조금씩 적고 하찮은 양을 모으는 모습",
        "억텐" : "억지 텐션의 줄임말",
        "스불재" : "스스로 불러온 재앙",
        "좋댓구알" : "좋아요, 댓글, 구독 알림설정의 줄임말",
        "어쩔티비" : "어쩌라고 가서 TV나봐",
        "갓생" : "갓 (God) + 생 (生)",
        "점메추" : "점심 메뉴 추천",
        "다꾸" : "다이어리 꾸미기",
        "킹받아" : "열받다라는 말에 접두사 King을 붙여 강조",
        "군싹" : "군침이 싹~도네의 줄임말"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button_setting()
        
        translate_PopInImage()
    
        
    }



    // MARK: - butten basic setting_not functional
    func button_setting() {
        
        for button_item in hashtag_Button {
            
            button_item.layer.borderColor = UIColor.black.cgColor
            button_item.layer.borderWidth = 1
            button_item.layer.cornerRadius = 8
            button_item.setTitleColor(.black, for: .normal)
            
            
            // 중복안되게 넣어주는 걸 못찾음 ㅠㅠ
            button_item.setTitle(voca.randomElement()?.key, for: .normal)

        }
                
    }

    func translate_PopInImage(){
        neologism_Translate_Outlet.text = voca.randomElement()?.value
    }
    //        for (button_index, button_item) in hashtag_Button.enumerated() {
    //
    //            button_item.layer.borderColor = UIColor.black.cgColor
    //            button_item.layer.borderWidth = 1
    //            button_item.layer.cornerRadius = 8
    //            button_item.setTitleColor(.black, for: .normal)
    //
    //        }
    
    
    @IBAction func tabGesture_keyboardDown(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func returnKey_KeyboardDown(_ sender: UITextField) {
    }
    
}

