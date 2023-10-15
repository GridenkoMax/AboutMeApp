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
  
    
    //MARK: - задаем данные для входа
    private let user = User.person()
    private let password = User.person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? TabBarViewController else { return }
        tabBarController.user = user
        
    }
    
    //MARK: - скрыть клавиатуру
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    //MARK: - Валидируем данные пользовательского ввода
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.login, passwordTextField.text == password.password else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    //MARK: - IBActions
    @IBAction func forgotUserNameButtonAction() {
        showAlert(with: "Oops!", and: "Your name is \(user) 😉")
    }
    
    @IBAction func forgotPasswordButtonAction() {
        showAlert(with: "Oops!", and: "Your password is \(password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}
//MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and message: String ){
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

