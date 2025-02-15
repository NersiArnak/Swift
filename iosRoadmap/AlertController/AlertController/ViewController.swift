import UIKit

class ViewController: UIViewController {

    private var labelLogin = UILabel()
    private var labelPassword = UILabel()
    private let checkPassword = "qwerty123"
    private var button = UIButton()
    
    
    let alert = UIAlertController(title: "Введите пароль", message: "Для продолжения необходимо заполнить анкету", preferredStyle: .alert)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // MARK: func main
        setupLabelLogin()
        setupLabelPassword()
        setupButton()
        setupAlert()
    
        // MARK: add view components
        view.addSubview(labelLogin)
        view.addSubview(labelPassword)
        view.addSubview(button)
    }
    
    func setupLabelLogin() {
        labelLogin = UILabel(frame: .init(
            x: 10,
            y: 100,
            width: 382,
            height: 60
        ))
        
        labelLogin.backgroundColor = .lightGray
        labelLogin.text = "Логин"
        labelLogin.textAlignment = .center
        labelLogin.font = .systemFont(ofSize: 20, weight: .regular)
        labelLogin.layer.cornerRadius = 8
        labelLogin.layer.masksToBounds = true
    }

    func setupLabelPassword() {
        labelPassword = UILabel(frame: .init(
            x: 10,
            y: 180,
            width: 382,
            height: 60
        ))
        
        labelPassword.backgroundColor = .lightGray
        labelPassword.text = "Пароль"
        labelPassword.textAlignment = .center
        labelPassword.font = .systemFont(ofSize: 20, weight: .regular)
        labelPassword.layer.cornerRadius = 8
        labelPassword.layer.masksToBounds = true
    }
    
    func setupButton() {
        button = UIButton(frame: .init(
            x: 100,
            y: 260,
            width: 200,
            height: 60
        ))
        
        button.backgroundColor = .systemBlue
        button.setTitle("Войти", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.layer.cornerRadius = 10
        
        button.addTarget(self, action: #selector(onTapButton), for: .touchDown)
    }
    
    @objc
    func onTapButton() {
        present(alert, animated: true)
    }
    
    
    func setupAlert() {
        let alertCancel = UIAlertAction(title: "Cancel", style: .cancel)
        let alertOK = UIAlertAction(title: "OK", style: .default) {_ in
            let textLoginValue = self.alert.textFields?.first?.text ?? ""
            let textPasswordValue = self.alert.textFields?.last?.text ?? ""
            if self.checkLogin(textLoginValue) {
                self.labelLogin.text = textLoginValue

            }
            
//            self.labelPassword.text = "3 e"
            if self.checkPassword(textPasswordValue) {
                self.labelPassword.text = "Пароль верный!"
            } else {
                self.labelPassword.text = "Пароль neверный!"
            }
            
        }
    
        alert.addTextField { textLogin in
            textLogin.placeholder = "Логин"
        }
        
        alert.addTextField { textPassword in
            textPassword.placeholder = "Пароль"
            textPassword.isSecureTextEntry = true
        }
        
        alert.addAction(alertCancel)
        alert.addAction(alertOK)
    }
    
    func checkLogin(_ textLoginValue: String) -> Bool {
        if !textLoginValue.isEmpty && textLoginValue.count > 3 && textLoginValue.contains("@") {
            return true
        } else {
            print("Логин введен не верно!")
            return false
        }
    }
    
    func checkPassword(_ textPasswordValue: String) -> Bool {
        if !textPasswordValue.isEmpty && textPasswordValue.count > 5 && textPasswordValue == self.checkPassword {
            return true
        } else {
            print("Пароль введен не верно!")
            return false
        }
    }
    
}

#Preview {
    ViewController()
}
