import UIKit

class ViewController: UIViewController {

    private var labelLogin = UILabel()
    private var labelPassword = UILabel()
    private var button = UIButton()
    private var alert = UIAlertController()
    private var alertSheet = UIAlertController()
    private var manualButton = UIButton()
    private let passwordDone = "password-very-secure"

    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: func main
        setupLabelLogin()
        setupLabelPassword()
        setupManualButton()
        setupAlert()
        setupAlertSheet()
        setupButton()
        
        // MARK: add view
        view.addSubview(labelLogin)
        view.addSubview(labelPassword)
        view.addSubview(manualButton)
        view.addSubview(button)
    }
    
    func setupLabelLogin() {
        labelLogin = UILabel(frame: .init(
            x: 15,
            y: 100,
            width: 370,
            height: 100
        ))
        confugureLabel(label: labelLogin)
        labelLogin.text = "Your login 🖇"
    }
    
    func setupLabelPassword() {
        labelPassword = UILabel(frame: .init(
            x: 15,
            y: 220,
            width: 370,
            height: 100
        ))
        confugureLabel(label: labelPassword)
        labelPassword.text = "Your Password 🔒"
    }
    
    func checkLogin(text: String) -> Bool {
        if !text.isEmpty && text.count >= 3 && text.contains("@") {
            return true
        }
        return false
    }
    
    func checkPassword(text: String) -> Bool {
        if text == passwordDone {
            return true
        }
        return false
    }
    
    func confugureLabel(label: UILabel) {
        label.backgroundColor = .systemGray5
        label.textAlignment = .center
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        label.font = .systemFont(ofSize: 25, weight: .regular)
    }
    
    func setupAlert() {
        alert = UIAlertController(title: "Enter your password", message: "To continue, you must fill out the form", preferredStyle: .alert)
        let alertActionCancel = UIAlertAction(title: "Cancel", style: .cancel)
        let alertActionOk = UIAlertAction(title: "OK", style: .destructive) {_ in
            let textFieldLogin = self.alert.textFields?.first?.text ?? ""
            let textFieldPassword = self.alert.textFields?.last?.text ?? ""
            
            if self.checkLogin(text: textFieldLogin) && self.checkPassword(text: textFieldPassword) {
                self.labelLogin.text = textFieldLogin
                self.labelPassword.text = "Password correct 🔓"
                self.labelLogin.backgroundColor = .systemGreen
                self.labelPassword.backgroundColor = .systemGreen
            } else {
                self.labelLogin.text = "Your login 🖇"
                self.labelPassword.text = "Your password 🔒"
                self.labelLogin.backgroundColor = .red
                self.labelPassword.backgroundColor = .red
            }
            
            print("Touch btn OK")
        }
        
        alert.addTextField() {text in
            text.placeholder = "Login"
            print("Login: \(text)")
        }
        alert.addTextField() {text in
            text.placeholder = "Password"
            text.isSecureTextEntry = true
            print("Password: \(text)")
        }
        
        alert.addAction(alertActionCancel)
        alert.addAction(alertActionOk)
    }
    
    func setupAlertSheet() {
        alertSheet = UIAlertController(title: "Manual", message: "The login must not be empty, contain, and also have more than 8 characters. The password must be: password-very-secure", preferredStyle: .actionSheet)
        alertSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
    }
    
    func setupButton() {
        button = UIButton(frame: .init(
            x:100,
            y: 750,
            width: 200,
            height: 70
        ))
        button.backgroundColor = .systemBlue
        button.setTitle("Open alert", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.layer.cornerRadius = 10
        
        button.addTarget(self, action: #selector(onTapButton), for: .touchDown)
        button.addTarget(self, action: #selector(onTouchButton), for: .touchUpInside)
        button.addTarget(self, action: #selector(onTouchButton), for: .touchUpOutside)
    }
    
    func setupManualButton() {
        manualButton = UIButton(frame: .init(
            x:145,
            y: 350,
            width: 120,
            height: 60
        ))
        manualButton.backgroundColor = .gray
        manualButton.layer.cornerRadius = 10
        manualButton.setTitle("Manual", for: .normal)
        manualButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        
        manualButton.addTarget(self, action: #selector(onTapManual), for: .touchDown)
        manualButton.addTarget(self, action: #selector(onTouchManual), for: .touchUpInside)
        manualButton.addTarget(self, action: #selector(onTouchManual), for: .touchUpOutside)
    }
    
    @objc
    func onTapButton() {
        button.backgroundColor = .blue
    }
    
    @objc
    func onTouchButton() {
        button.backgroundColor = .systemBlue
        present(alert, animated: true)
    }
    
    // Когда нажали, темнеет
    @objc
    func onTapManual() {
        manualButton.backgroundColor = .darkGray
    }
    
    // Отпускаем, возвращается в исходное
    @objc
    func onTouchManual() {
        manualButton.backgroundColor = .gray
        present(alertSheet, animated: true)
    }
}

#Preview {
    ViewController()
}
