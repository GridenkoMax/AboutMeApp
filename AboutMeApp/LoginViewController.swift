//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Maxim Gridenko on 06.10.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    var logName = Scence.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
    }
    
    //MARK: - Передаем имя пользователя между экранами
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as? UITabBarController
        tabBarController?.viewControllers?.forEach { viewController in
            if let welcomVC = viewController as? WelcomeViewController{
                welcomVC.user = logName
            }
        }
    }
    
    //MARK: - скрыть клавиатуру
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    private let user = Scence.getUser()
    //MARK: - Валидируем данные пользовательского ввода
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.nameUser, passwordTextField.text == user.password else {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
            return false
        }
        return true
    }
    
    //MARK: - IBActions
    @IBAction func forgotUserNameButtonAction() {
        showAlert(with: "Oops!", and: "Your name is \(user.nameUser) 😉")
    }
    
    @IBAction func forgotPasswordButtonAction() {
        showAlert(with: "Oops!", and: "Your password is \(user.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}
//MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and message: String, textField: UITextField? = nil ){
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in self.passwordTextField.text = "" }
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

