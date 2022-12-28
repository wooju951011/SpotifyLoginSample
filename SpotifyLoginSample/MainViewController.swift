//
//  MainViewController.swift
//  SpotifyLoginSample
//
//  Created by wooju on 2022/12/20.
//

import UIKit
import FirebaseAuth

class MainViewController : UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // popGesture x
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = false
        
        let email = Auth.auth().currentUser?.email ?? "고객"
        
        welcomeLabel.text = """
        환영합니다.
    \(email)님
"""
    }
    
    @IBAction func logoutButtonTapped(_ sender: Any) {
        //로그인 화면 돌아가기₩ㄱㄷ4444₩₩₩₩₩1FVGBHJY
        self.navigationController?.popToRootViewController(animated: true)
    }
}
