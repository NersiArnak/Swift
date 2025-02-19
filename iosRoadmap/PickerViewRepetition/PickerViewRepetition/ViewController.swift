
import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    private let universeSuperHeroes = ["Marvel", "DC"]
    private let superHeroesMarvel = ["Hulk", "Iron-man", "Spider-man",
                                     "Capitan-America", "Tor"]
    private let superHeroesDC = ["Batman", "Superman", "Woman-cat", "Joker", "Aquaman"]
    
    private let imageView = UIImageView()
    private let pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: func main
        setupPicker()
        setupImage()
        
        view.addSubview(imageView)
        view.addSubview(pickerView)
    }
    
    func setupPicker() {
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.frame = .init(
            x: 15,
            y: 600,
            width: 370,
            height: 200)
    }
    
    func setupImage() {
        imageView.frame = .init(
            x: 10,
            y: 100,
            width: 382,
            height: 470
        )
        imageView.contentMode = .scaleAspectFill
        setImage(name: "Hulk")
        imageView.backgroundColor = .green
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
    }
    
    func setImage(name: String) {
        imageView.image = UIImage(named: name)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return universeSuperHeroes.count // кол-во строк для 0(1) компонента [Marvel, DC]
        } else { // кол-во строк для 1(2) компонента
            if universeSuperHeroes[pickerView.selectedRow(inComponent: 0)] == "Marvel" {
                return superHeroesMarvel.count
            } else {
                return superHeroesDC.count
            }
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 40
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return universeSuperHeroes[row]
        } else {
            // В 0(1) выбран Marvel (0 индекс)
            if pickerView.selectedRow(inComponent: 0) == 0 {
                return superHeroesMarvel[row]
            } else {
                return superHeroesDC[row]
            }
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            pickerView.reloadComponent(1)
            if pickerView.selectedRow(inComponent: 0) == 0 {
                setImage(name: superHeroesMarvel[pickerView.selectedRow(inComponent: 1)])
            } else {
                setImage(name: superHeroesDC[pickerView.selectedRow(inComponent: 1)])
            }
        } else {
            if pickerView.selectedRow(inComponent: 0) == 0 {
                setImage(name: superHeroesMarvel[pickerView.selectedRow(inComponent: 1)])
            } else {
                setImage(name: superHeroesDC[pickerView.selectedRow(inComponent: 1)])
            }
        }
    }
}

#Preview {
    ViewController()
}
