import UIKit

class ViewController: UIViewController {

    private let label = UILabel(frame: .init(
        x: 160,
        y: 90,
        width: 80,
        height: 80)
    )
    
    private let imageView = UIImageView(frame: .init(
        x: 11,
        y: 200,
        width: 380,
        height: 500)
    )
    
    private let button = UIButton(frame: .init(
        x: 75,
        y: 730,
        width: 250,
        height: 70)
    )

    private var alert = UIAlertController(title: "Тест для Димы", message: "Дима основной текст", preferredStyle: .alert)
    
    private var indexImage = 0
    
    private let blueNude = UIImage(named: "Blue nude")
    private let womanHat = UIImage(named: "Woman in a Hat")
    private let goldfish =  UIImage(named: "Goldfish")
    private let catAndFish = UIImage(named: "Cat and Fish")
    private let byronsMuse = UIImage(named: "Byron's Muse")
    
    lazy var arrayImage = [blueNude, womanHat, goldfish, byronsMuse, catAndFish]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        setupImageView()
        setupButton()
        setupGestures()
        
        // MARK: add view
        view.addSubview(label)
        view.addSubview(imageView)
        view.addSubview(button)
    }
    
    // MARK: label
    func setupLabel() {
        label.text = String(indexImage + 1)
        label.backgroundColor = .darkGray
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32, weight: .regular)
    }
    
    // MARK: image view
    func setupImageView() {
        imageView.backgroundColor = .red
        imageView.layer.cornerRadius = 16
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = true
        imageView.image = arrayImage[0]
    }
    
    // MARK: button "next"
    func setupButton() {
        button.setTitle("next", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 16
        button.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
        button.addTarget(self, action: #selector(buttonReleased), for: .touchUpInside)
        button.addTarget(self, action: #selector(buttonReleased), for: .touchUpOutside)
    }
    
    func setupAlert() {
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)
    }
    
    @objc
    func buttonPressed() {
        listImage()
        button.backgroundColor = .blue
    }
    
    @objc
    func buttonReleased() {
        button.backgroundColor = .systemBlue
    }
    
    func listImage() {
        indexImage += 1
        if indexImage > arrayImage.count - 1 {
            indexImage = 0
        }
        
        label.text = "\(indexImage + 1)"
        
        if !arrayImage.isEmpty {
            imageView.image = arrayImage[indexImage] 
        } else {
            print("Коллекция пуста")
        }
    }
    
    // MARK: gestures
    func setupGestures() {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(gesture:)))
        swipeLeft.direction = .left
        view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(gesture:)))
        swipeRight.direction = .right
        view.addGestureRecognizer(swipeRight)
    }
    
    // MARK: handle swipe
    @objc
    func handleSwipe(gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .left {
            swipeLeftImage()
            animateImageTransition()
            print("свайп влево")
        } else if gesture.direction == .right {
            swipeRightImage()
            animateImageTransition()
            print("свайп вправо")
        }
    }
    
    func swipeRightImage() {
        indexImage -= 1
        if indexImage < 0 {
            indexImage = arrayImage.count - 1
        }
    }
    
    func swipeLeftImage() {
        indexImage += 1
        if indexImage > arrayImage.count - 1 {
            indexImage = 0
        }
    }
    
    func animateImageTransition() {
        UIView.transition(with: imageView, duration: 1, animations: {self.updateImage()})
    }
    
    func updateImage() {
        label.text = "\(indexImage + 1)"
        print(indexImage + 1)
        imageView.image = arrayImage[indexImage]
    }
}

#Preview {
    ViewController()
}

