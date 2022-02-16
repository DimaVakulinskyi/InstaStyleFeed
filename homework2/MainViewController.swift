//
//  MainViewController.swift
//  homework2
//
//  Created by Дмитро Вакулінський on 02.11.2021.
//

import UIKit

enum posts {
    case img(value: photoPost)
    case txt(value: textPost)
}

class MainViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var data: Array<posts> = [
        .img(value: photoPost(image: UIImage(named: "darthvader") ?? UIImage(), text: "I am your father", isLiked: false)),
        .txt(value: textPost(text: "The original Return of the Jedi ending saw Luke Skywalker turn evil.", isLiked: false)),
        .img(value: photoPost(image: UIImage(named: "hansolo") ?? UIImage(), text: "Han shot first", isLiked: false)),
        .txt(value: textPost(text: "Samuel L. Jackson had his lightsaber engraved with a bad word.", isLiked: false)),
        .img(value: photoPost(image: UIImage(named: "obiwan") ?? UIImage(), text: "Hello there", isLiked: false))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MainViewController:UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = self.data[indexPath.row]
        switch post {
        case .img(let img):
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell", for: indexPath)
            if let imgCell = cell as? ImageTableViewCell {
                imgCell.post = img
            }
            return cell
        case .txt(let txt):
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextTableViewCell", for: indexPath)
            if let txtCell = cell as? TextTableViewCell {
                txtCell.post = txt
                return txtCell
            }
                return cell
        }
    }
}

