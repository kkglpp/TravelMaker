//
//  MainViewController.swift
//  TravelMaker
//
//  Created by ms k on 2023/09/22.
//

import UIKit
import FirebaseAuth

class MainPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnTestLogout(_ sender: UIButton) {
        if Auth.auth().currentUser != nil {
            do {
                try Auth.auth().signOut()
                // 로그아웃 성공한 경우, 이미지를 변경하거나 다른 작업 수행
                
                let resultAlert = UIAlertController(title: "로그아웃", message: "로그아웃 되었습니다", preferredStyle: .actionSheet)
                let onAction = UIAlertAction(title: "OK", style: .default, handler: {ACTION in self.transitionToLogin()})
                resultAlert.addAction(onAction)
                self.present(resultAlert, animated: true)
                
//                let LoginSB = storyboard?.instantiateViewController(identifier: Constants.storyboard.LoginSB) as? UIViewController
//                transitionToLogin()

                
//                // 현재의 뷰pop시키고 root뷰로 이동
//                if let navigationController = self.navigationController {
//                    navigationController.popToRootViewController(animated: true)
//                }
          


            } catch {
                // 로그아웃 실패한 경우, 에러 메시지 출력
                print(error.localizedDescription)
            }
        } else {
            // 사용자가 로그인하지 않은 경우
//            performSegue(withIdentifier: "sgLogin", sender: nil)
            
        }
    }
    
    func transitionToLogin(){
        let board = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = board.instantiateViewController(withIdentifier: "LoginSB") as? LoginViewController else { return }
//        nextVC.userData = data
        nextVC.modalTransitionStyle = .coverVertical
        nextVC.modalPresentationStyle = .overFullScreen
        self.present(nextVC, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



        
    } // MainPageViewController
    
