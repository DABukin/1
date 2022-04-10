//
//  NewViewController.swift
//  1
//
//  Created by Дмитрий Алексеевич on 10.04.2022.
//

import UIKit

class NewViewController: UIViewController {

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
    }
//уведомление о показе клавиатуры
    @objc func WillShowKeyboard (_ notification: NotificationCenter) {
        print(#function)
    }
    //уведомление о скрытии клавиатуры
    @objc func WillHideNotification (_ notifications: NotificationCenter) {
        print(#function)    }
    
}
