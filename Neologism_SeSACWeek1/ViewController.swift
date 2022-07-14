//
//  ViewController.swift
//  Neologism_SeSACWeek1
//
//  Created by KYUNGSUP GO on 2022/07/09.
//

import UIKit

class ViewController: UIViewController {
    
    
    // 단어: 뜻 딕셔너리
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
    
    

    @IBOutlet var hashtag_Button: [UIButton]!
    @IBOutlet weak var textField_Outlet: UITextField!
    @IBOutlet weak var neologism_Translate_Outlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 화면 맨처음 켰을 때 기본 세팅
        button_setting()

    }



    // MARK: - butten basic setting_not functional
    func button_setting() {
        
        
        // 중복없이 기본 해쉬태그 버튼 넣기위한 숫자생성
        var no_DuplicatedNumbers:Set<Int> = []
        
        while no_DuplicatedNumbers.count < 5 {
            let number = Int.random(in: 0...9)
            no_DuplicatedNumbers.insert(number)
        }
            
        //  basic setting of Button
        for (i,button_item) in zip(no_DuplicatedNumbers,hashtag_Button)
            {
            
            button_item.layer.borderColor = UIColor.black.cgColor
            button_item.layer.borderWidth = 1
            button_item.layer.cornerRadius = 8
            button_item.setTitleColor(.black, for: .normal)
            
            button_item.setTitle(Array(voca.keys)[i], for: .normal)
            
            }
     
                
    }
    


    
    // MARK: - 뜻별로 해석해주는 함수
    func translate_PopInImage(choice: String) -> String {
        switch choice {
        case "쫌쫌따리":
            return "아주 조금씩 적고 하찮은 양을 모으는 모습"
        case "억텐":
            return "억지 텐션의 줄임말"
        case "스불재":
            return "스스로 불러온 재앙"
        case "좋댓구알":
            return "좋아요, 댓글, 구독 알림설정의 줄임말"
        case "어쩔티비":
            return "어쩌라고 가서 TV나봐"
        case "갓생":
            return "갓 (God) + 생 (生)"
        case "점메추":
            return "점심 메뉴 추천"
        case "다꾸":
            return "다이어리 꾸미기"
        case "킹받아":
            return "열받다라는 말에 접두사 King을 붙여 강조"
        case "군싹":
            return "군침이 싹~도네의 줄임말"
        default:
            return "정확하게 입력해주세요"
        }
    }

    
    // MARK: - hashTagButton Clicked
    @IBAction func translate_ButtoenClicked(_ sender: UIButton) {
        neologism_Translate_Outlet.text = translate_PopInImage(choice: sender.currentTitle ?? " ")
    }
    
    
    // MARK: - keyBoardDown & search - find Button
    
    @IBAction func findButton_Action(_ sender: UIButton) {
        view.endEditing(true)
        neologism_Translate_Outlet.text = translate_PopInImage(choice: textField_Outlet.text ?? " " )
        button_setting()
        
    }
    
    
    
    // MARK: - keyBoardDown - tab Gesture
    @IBAction func tabGesture_keyboardDown(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    // MARK: - keyBoardDown - returnKey
    @IBAction func returnKey_KeyboardDown(_ sender: UITextField) {
        neologism_Translate_Outlet.text = translate_PopInImage(choice: textField_Outlet.text ?? " " )
        button_setting()
    }
    
    
    
}

