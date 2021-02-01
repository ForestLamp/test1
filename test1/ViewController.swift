//
//  ViewController.swift
//  test1
//
//  Created by a_sid on 22.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var labelHeader: UILabel!
    @IBOutlet weak var buttonFooter: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 150
        labelHeader.text = "Сделайте объявление заметнее на 7 дней"
        buttonFooter.layer.cornerRadius = 8
        buttonFooter.setTitle("Выбрать", for: .normal)
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    var items = [ItemInfoModel(imageName: "xl", heading: "XL-объявление", details: "Пользователи смогут посмотреть фотографии, описание и телефон прямо из результатов поиска.", price: 356, spaceHack: " ", symboolRub: "₽"), ItemInfoModel(imageName: "highlight", heading: "Выделить цветом", details: "Яркий цвет не даст затеряться среди других объявлений.", price: 299, spaceHack: " ", symboolRub: "₽")]
   

    

}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell")! as! ItemInfoCell
        cell.configure(items[indexPath.row])
        return cell
    }
    
// Не запустилось
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let optionMenu = UIAlertController(title: nil, message: "Вы выбрали XL", preferredStyle: .actionSheet)
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//        let callActionHandler = {
//            (action: UIAlertAction!) -> Void in
//            let alertMessage = UIAlertController(title: "Сервис недоступен", message: "Попробуйте позже", preferredStyle: .alert)
//            alertMessage.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
//
//            self.present(ViewController(), animated: true, completion: nil)
//        }
//        let callAction = UIAlertAction(title: "Call 8 800\(indexPath.row)", style: .default, handler: callActionHandler)
//
//        optionMenu.addAction(cancelAction)
//        optionMenu.addAction(callAction)
//
//        self.present(ViewController(), animated: true, completion: nil)
//    }
}
