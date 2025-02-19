import UIKit

class ViewController: UIViewController {
    
    private let imageView = UIImageView()
    private let label = UILabel()
    private let listCars = ["911", "Panamera", "Taycan"]
    private let button = UIButton()
    private var alertDescription = UIAlertController()
    private lazy var segmented = UISegmentedControl(items: listCars)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: handler func
        setupImageView()
        setupLabel()
        setupSegmented()
        setupButton()
        setupAlertController()
        
        // MARK: add view
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(segmented)
        view.addSubview(button)
    }
    
    private func setupImageView() {
        imageView.frame = .init(
            x: 12,
            y: 160,
            width: 380,
            height: 120
        )
        imageView.backgroundColor = .red
        imageView.image = UIImage(named: "911")
    }
    
    private func setupLabel() {
        label.frame = .init(
            x: 12,
            y: 285,
            width: 380,
            height: 50
        )
        label.backgroundColor = .clear
        label.text = "Porsche \(listCars[0])"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 21, weight: .medium)
        label.numberOfLines = 0
        label.minimumScaleFactor = 0.5
    }
    
    private func setupSegmented() {
        segmented.frame = .init(
            x: 12,
            y: 350,
            width: 380,
            height: 45
        )
        
        let normalState = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17, weight: .medium),
            NSAttributedString.Key.foregroundColor: UIColor.gray,
        ]
        
        let selectedState = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 19, weight: .medium),
            NSAttributedString.Key.foregroundColor: UIColor.systemBlue.withAlphaComponent(0.7),
        ]
        
        segmented.selectedSegmentIndex = 0
        segmented.setTitleTextAttributes(normalState, for: .normal)
        segmented.setTitleTextAttributes(selectedState, for: .selected)
        segmented.addTarget(self, action: #selector(selectedImage), for: .valueChanged)
        segmented.addTarget(self, action: #selector(setupAlertController), for: .valueChanged)
        
    }
    
    func setImage(named: String) {
        imageView.image = UIImage(named: named)
    }
    
    func changeImage(for index: Int) {
        UIView.animate(withDuration: 0.3, animations: {
            self.imageView.alpha = 0
        }) { _ in
            UIView.animate(withDuration: 0.3) {
                self.imageView.alpha = 1
                self.setImage(named: self.listCars[self.segmented.selectedSegmentIndex])
            }
        }
    }
    
    func setupButton() {
        button.frame = .init(
            x: 12,
            y: 415,
            width: 380,
            height: 45
        )
        button.backgroundColor = .black
        button.tintColor = .white
        button.layer.cornerRadius = 8
        button.setTitle("Description", for: .normal)
        button.addTarget(self, action: #selector(tapButton), for: .touchDown)
        button.addTarget(self, action: #selector(touchUpButton), for: .touchUpInside)
        button.addTarget(self, action: #selector(touchUpButton), for: .touchUpOutside)
    }
    
    @objc
    func selectedImage() {
        label.text = "Porsche \(listCars[segmented.selectedSegmentIndex])"
        setImage(named: listCars[segmented.selectedSegmentIndex])
        //changeImage(for: segmented.selectedSegmentIndex)
        print("selected \(segmented.selectedSegmentIndex)")
    }
    
    @objc func tapButton() {
        button.backgroundColor = .black.withAlphaComponent(0.9)
        present(alertDescription, animated: true)
    }
    
    @objc func touchUpButton() {
        button.backgroundColor = .black
    }
    
    @objc func setupAlertController() {
        let alertCancel = UIAlertAction(title: "Cancel", style: .cancel)
        let text911 = "The Porsche 911 is a legendary sports car produced by the German company Porsche since 1964. It features a distinctive design, rear-engine layout, and outstanding performance. The model combines luxury, high performance, and innovative technology, remaining an icon among sports cars."
        
        let textPanamera = "The Porsche Panamera is a luxury sports sedan produced by Porsche since 2009. It combines the dynamics of a sports car with executive-class comfort. Equipped with powerful engines, advanced technologies, and an elegant design, it is the perfect choice for those who appreciate both speed and convenience."
        
        let textTaycan = "The Porsche Taycan is Porsche's first mass-produced electric vehicle, launched in 2019. It combines a sporty character, cutting-edge technology, and premium comfort. With powerful electric motors, instant acceleration, and an innovative charging system, the Taycan stands as a flagship in the world of electric sports cars."
        
        let listTextDescription = [text911, textPanamera, textTaycan]
        
        alertDescription = UIAlertController(title: "Porsche \(listCars[segmented.selectedSegmentIndex])", message: listTextDescription[segmented.selectedSegmentIndex], preferredStyle: .actionSheet)
        
        alertDescription.addAction(alertCancel)
    }
} 

#Preview {
    ViewController()
}
