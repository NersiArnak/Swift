import UIKit

class ViewController: UIViewController {
    
    private let buttonHi = UIButton(frame:
        .init(
            x: 130,
            y: 400,
            width: 150,
            height: 70
        )
    )
    private let label = UILabel(frame:
            .init(
                x: 80,
                y: 200,
                width: 250,
                height: 130
            )
    )
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  MARK: label
        
        label.text = "Кнопочка"
        label.minimumScaleFactor = 0.5
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 30, weight: .medium)
        label.backgroundColor = .red
        label.textAlignment = .center
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        
        // MARK: button
        
        buttonHi.setTitle("Hi", for: .normal)
        buttonHi.setTitleColor(.red, for: .highlighted)
        buttonHi.titleLabel?.font = .systemFont(ofSize: 25, weight: .medium)
        buttonHi.backgroundColor = .black
        buttonHi.layer.cornerRadius = 16
        
        // Добавляем обработчики событий
        buttonHi.addTarget(self, action: #selector(buttonDown), for: .touchDown)
        
        buttonHi.addTarget(self, action: #selector(buttonUpInside), for: .touchUpInside)
        
        view.addSubview(label)
        view.addSubview(buttonHi)
    }
    
    @objc func buttonDown() {
        buttonHi.backgroundColor = .lightGray
        label.text = "Кнопка нажата"
        label.backgroundColor = .black
        label.textColor = .white
        print("Кнопка нажата: голубая")
    }
    
    @objc func buttonUpInside() {
        buttonHi.backgroundColor = .gray
        label.text = "Кнопочка"
        label.backgroundColor = .red
        print("Кнопка отпущена: черная")
    }
}

#Preview(traits: .portrait) {
    ViewController()
}

