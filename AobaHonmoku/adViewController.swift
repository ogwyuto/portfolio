//
//  adViewController.swift
//  AobaHonmoku
//
//  Created by 小川祐都 on 2022/10/28.
//

import UIKit

class adViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var adInfo:Array<Array<String>> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
        tableView.rowHeight = 185
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return adInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! MainTableViewCell
        cell.dateLabel.text = adInfo[indexPath.row][0]
        cell.makerLabel.text = adInfo[indexPath.row][1]
        cell.productNameLabel.text = adInfo[indexPath.row][2]
        cell.sizeLabel.text = adInfo[indexPath.row][3]
        cell.withoutTaxPriceLabel.text = "¥" + adInfo[indexPath.row][4]+"(税抜価格)"
        cell.inTaxPriceLabel.text = "¥" + adInfo[indexPath.row][5]
        cell.commentLabel.text = adInfo[indexPath.row][6]
        cell.productImage.image = UIImage(named : adInfo[indexPath.row][7])
        return cell
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
