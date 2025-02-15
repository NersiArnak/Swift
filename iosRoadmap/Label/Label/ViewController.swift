import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let labelName = UILabel (
            frame: .init (
                x: 80,
                y: 100,
                width: 250,
                height: 100
            )
        )
        
        let attributedTextName = NSMutableAttributedString (
            string: "Имя: Арнак",
            attributes: [
                .font : UIFont.systemFont(ofSize: 20, weight: .bold),
                .foregroundColor : UIColor.white,
            ]
        )
        
        attributedTextName.addAttributes (
            [
                .foregroundColor : UIColor.lightGray,
            ],
            range: NSRange (
                location: 5, length: 3
            )
        )
        
        labelName.attributedText = attributedTextName
        labelName.backgroundColor = .red
        labelName.textAlignment = .center
        labelName.layer.masksToBounds = true
        labelName.layer.cornerRadius = 10
        labelName.numberOfLines = 0
        labelName.adjustsFontSizeToFitWidth = true
        labelName.minimumScaleFactor = 0.5
        
        let labelSurname = UILabel (
            frame: .init (
                x: 80,
                y: 220,
                width: 250,
                height: 100)
        )
        
        let attributedTextSurname = NSMutableAttributedString (
            string: "Фамилия: Нерсисян",
            attributes: [
                .font : UIFont.systemFont(ofSize: 20, weight: .bold),
                .foregroundColor : UIColor.white,
            ]
        )
        
        labelSurname.attributedText = attributedTextSurname
        labelSurname.backgroundColor = .blue
        labelSurname.textAlignment = .center
        labelSurname.layer.masksToBounds = true
        labelSurname.layer.cornerRadius = 10
        labelSurname.numberOfLines = 0
        labelSurname.adjustsFontSizeToFitWidth = true
        labelSurname.minimumScaleFactor = 0.5
        
        let labelLastname = UILabel(
            frame: .init (
                x: 80,
                y: 340,
                width: 250,
                height: 100
            )
        )
        
        let attributedTextLastName = NSMutableAttributedString (
            string: "Отчество: Гарикович",
            attributes: [
                .font : UIFont.systemFont(ofSize: 20, weight: .bold),
                .foregroundColor : UIColor.white
            ]
        )
        
        attributedTextLastName.addAttributes (
            [
                .foregroundColor : UIColor.systemBlue
            ],
            range: NSRange (
                location: 10, length: 3
            )
        )
        
        labelLastname.attributedText = attributedTextLastName
        labelLastname.backgroundColor = .orange
        labelLastname.textAlignment = .center
        labelLastname.layer.masksToBounds = true
        labelLastname.layer.cornerRadius = 10
        labelLastname.numberOfLines = 0
        labelLastname.adjustsFontSizeToFitWidth = true
        labelLastname.minimumScaleFactor = 0.5
        
        view.addSubview(labelName)
        view.addSubview(labelSurname)
        view.addSubview(labelLastname)
    }
}



