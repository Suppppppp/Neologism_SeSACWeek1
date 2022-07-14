//
//  AppDelegate.swift
//  Neologism_SeSACWeek1
//
//  Created by KYUNGSUP GO on 2022/07/09.
//

import UIKit
import IQKeyboardManagerSwift


@main
@available(iOS 13.0, *)
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // MARK: - keyboard 객체 가리지 않고 같이 올라가기
        IQKeyboardManager.shared.enable = true // 키보드 영역에 텍스트 필드가 있어서 가려지는 경우, 텍스트필드가 같이 올라가서 안가려지게 해주는거
        
//         MARK: - for 3 Sceonds pop lunch screen - start
        sleep(3)
        // MARK: - end
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

