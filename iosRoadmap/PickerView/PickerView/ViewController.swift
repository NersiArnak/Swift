import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    private var pickerView = UIPickerView()
    private var rainbow = UIImage(named: "Rainbow")
    private var ninthWave = UIImage(named: "Ninth Wave")
    private var bounceWave = UIImage(named: "Bounce Wave")
    private var blackSea = UIImage(named: "Black Sea")
    private var bayNaples = UIImage(named: "Bay of Naples")
    private var battleSinop = UIImage(named: "Battle of Sinop")
    private var battleChesma = UIImage(named: "Battle of Chesma")
    private var amongWaves = UIImage(named: "Among the Waves")
    private var imageView = UIImageView()
    
    private lazy var arrayImage = [rainbow, ninthWave, bounceWave, blackSea, bayNaples, battleSinop, battleChesma, amongWaves]
    
    private lazy var dictImage = [rainbow: "Rainbow", ninthWave : "Ninth Wave",  bounceWave :  "Bounce Wave", blackSea : "Black Sea", bayNaples : "Bay of Naples", battleSinop : "Battle of Sinop", battleChesma : "Battle of Chesma", amongWaves : "Among the Waves"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: func main
        setupPicker()
        setupImage()
        
        // MARK: add view
        view.addSubview(imageView)
        view.addSubview(pickerView)
        
    }
    
    func setupImage() {
        imageView.frame = .init(
            x: 10,
            y: 100,
            width: 381,
            height: 450)
        imageView.image = arrayImage[0]
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
    }
    
    func setupPicker() {
        pickerView.dataSource = self
        pickerView.delegate = self
        pickerView.frame = .init(
            x: 50,
            y: 580,
            width: 300,
            height: 150)
        pickerView.backgroundColor = .clear
        pickerView.layer.cornerRadius = 20
        pickerView.layer.masksToBounds = true
    }
    
    // MARK: - UIPickerViewDataSource

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        arrayImage.count
    }
    
    // MARK: - UIPickerViewDelegate
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return arrayFrits[row]
//    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let label = UILabel()
        label.text = dictImage[arrayImage[row]]
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25, weight: .regular)
        return label
    }
    
    // Промежуток между строками
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        40
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imageView.image = arrayImage[row]
    }
}

#Preview {
    ViewController()
}
