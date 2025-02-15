import UIKit

class ViewController: UIViewController {
    
    private var countIndex = 0 // index pictures
    
    private var countImage = -1 // count image

    private var labelNameImage = UILabel(frame: .init(
        x: 11,
        y: 100,
        width: 380,
        height: 100
    ))

    private let previewImage = UIImageView(frame: .init(
        x: 11,
        y: 230,
        width: 380,
        height: 470
    ))
    
    private let buttonTap =  UIButton(frame:
        .init(x: 130,
              y: 730,
              width: 150,
              height: 60
    ))
    
    private let vanGoghViolin = UIImage(named: "VanGoghViolin")!
    private let portraitVanGogh = UIImage(named: "PortraitVanGogh")!
    private let floweringAlmondBranches = UIImage(named: "FloweringAlmondBranches")!
    private let vincentChilling = UIImage(named: "VincentChilling")!
    private let cafeNightTerrace =  UIImage(named: "CafeNightTerrace")!
    private let starryNight =  UIImage(named: "StarryNight")!
    
    private lazy var dictImageAndName = [
        vanGoghViolin : "Vincent with the violin",
        portraitVanGogh : "portrait Van Gogh ",
        floweringAlmondBranches : "flowering almond branches",
        vincentChilling : "Vincent is chilling" ,
        cafeNightTerrace : "сafe night terrace",
        starryNight : "starry night",
    ]
    
    private lazy var arrayImage: [UIImage] = [
        vanGoghViolin,
        portraitVanGogh,
        floweringAlmondBranches,
        vincentChilling,
        cafeNightTerrace,
        starryNight,
    ]
    
    private let arrayColor: [UIColor] = [.systemBlue, .systemRed, .green, .yellow, .purple, .systemPink]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(arrayImage.count)
        previewImage.image = cafeNightTerrace // defolt picture
        
        // MARK: label name image
        labelNameImage.backgroundColor = .systemBlue.withAlphaComponent(1/10)
        labelNameImage.text = dictImageAndName[cafeNightTerrace]
        labelNameImage.textColor = .darkGray
        labelNameImage.textAlignment = .center
        labelNameImage.font = .systemFont(ofSize: 30, weight: .bold)
        labelNameImage.numberOfLines = 0
        labelNameImage.adjustsFontSizeToFitWidth = true
        labelNameImage.minimumScaleFactor = 0.5
        labelNameImage.layer.cornerRadius = 16
        labelNameImage.layer.masksToBounds = true
        
        // MARK: design card image
        previewImage.backgroundColor = .lightGray
        previewImage.contentMode = .scaleToFill
        previewImage.layer.cornerRadius = 16
        previewImage.layer.masksToBounds = true
        
        // MARK: button defenition
        buttonTap.setTitle("tap me", for: .normal)
        buttonTap.setTitleColor(.white, for: .normal)
        buttonTap.backgroundColor = .systemBlue
        buttonTap.layer.cornerRadius = 10
        buttonTap.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        buttonTap.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
        buttonTap.addTarget(self, action: #selector(buttonReleased), for: .touchUpInside)
        
        // MARK: add view phone
        view.addSubview(labelNameImage)
        view.addSubview(previewImage)
        view.addSubview(buttonTap)
    }
    
    // MARK: func switching image
    func switchingImage() {
        countImage += 1
        if countImage > arrayImage.count - 1 {
            countImage = 0
        }
        print("номер в массиве \(countImage)")
    }
    
    func namePicture() {
        switch previewImage.image {
        case vanGoghViolin:
            labelNameImage.text = dictImageAndName[vanGoghViolin]
        case portraitVanGogh:
            labelNameImage.text = dictImageAndName[portraitVanGogh]
        case floweringAlmondBranches:
            labelNameImage.text = dictImageAndName[floweringAlmondBranches]
        case vincentChilling:
            labelNameImage.text = dictImageAndName[vincentChilling]
        case cafeNightTerrace:
            labelNameImage.text = dictImageAndName[cafeNightTerrace]
        case starryNight:
            labelNameImage.text = dictImageAndName[starryNight]
        default:
            labelNameImage.text = "defolt picture"
        }
    }
    
    @objc func buttonTapped() {
        switchingImage()
        previewImage.image = arrayImage[countImage]
        namePicture()
        buttonTap.backgroundColor = .blue
        countIndex += 1
        print("Кнопка была нажата \(countIndex) раз")
    }
    
    @objc func buttonReleased() {
        buttonTap.backgroundColor = .systemBlue
//        previewImage.image = .none
    }
}

#Preview {
    ViewController()
}


