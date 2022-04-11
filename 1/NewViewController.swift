//
//  NewViewController.swift
//  1
//
//  Created by Дмитрий Алексеевич on 10.04.2022.
//

import UIKit
import Foundation
class NewViewController: UIViewController {
    //подключааем скроллвью
    @IBOutlet weak var scrollWiew: UIScrollView!
    
    //подключаем проверку login
    
    @IBOutlet weak var loginTextField: UITextField!
    //подключаем проверку password
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//класс работающий с жестами, в данном случае с тапом
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(hideScreen))
        view.addGestureRecognizer(tapGR)
    }
                                           
    @objc func hideScreen() {
        view.endEditing(true)
        }
    
    //прослушивание сообщений
    override func viewDidAppear(_ animated: Bool) {
        // запуск клавиатуры
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(WillShowKeyboard(_:)),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        
        //скрытие клавиатуры
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(WillHideNotification(_:)),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
        //скрыть полоску навигации
        navigationController?.setToolbarHidden(true, animated: false)
    }
//уведомление о показе клавиатуры
    @objc func WillShowKeyboard (_ notification: Notification) {
        
        guard let info = notification.userInfo as NSDictionary?,
              let keyboardSize = info.value(forKey: UIResponder.keyboardFrameBeginUserInfoKey) as? NSValue else {return}
        //print(#function)
        
        let keyboardHeight = keyboardSize.cgRectValue.size.height
        scrollWiew.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardHeight, right: 0)
    }
    //уведомление о скрытии клавиатуры
    @objc func WillHideNotification (_ notifications: Notification) {
        //print(#function)
        scrollWiew.contentInset = .zero
        
    }
    
    //подключаем кнопку
    
    @IBAction func tapButton(_ sender: Any) {
        
        guard let login = loginTextField.text,
                let password = passwordTextField.text,
        login == "",
              password == "" else {
                show(message: "Error")
                  return
              }
        
        performSegue(withIdentifier: "Login", sender: nil)
        
    }}
        
        extension NewViewController {
            func show(message: String) {
                
                let alertVC = UIAlertController(title: "Error",
                                                message: message,
                                                preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "OK",
                                        style: .default,
                                        handler: nil)
                alertVC.addAction(okAction)
                
                present(alertVC, animated: true, completion: nil)
    }
}
