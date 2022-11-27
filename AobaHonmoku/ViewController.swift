//
//  ViewController.swift
//  AobaHonmoku
//
//  Created by 小川祐都 on 2022/10/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    
    
    
    var csvArray:[String] = []
    var csvArrayThu:Array<Array<String>> = []
    var csvArrayThu0:[String] = []
    var csvArrayFri:Array<Array<String>> = []
    var csvArrayFri0:[String] = []
    var csvArraySat:Array<Array<String>> = []
    var csvArraySat0:[String] = []
    var csvArraySun:Array<Array<String>> = []
    var csvArraySun0:[String] = []
    var csvArrayMon:Array<Array<String>> = []
    var csvArrayMon0:[String] = []
    var csvArrayTue:Array<Array<String>> = []
    var csvArrayTue0:[String] = []
    var csvArrayWed:Array<Array<String>> = []
    var csvArrayWed0:[String] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //CSVを読み込むための処理
        func loadCSV(fileName:String) -> [String] {
            let csvBundle = Bundle.main.path(forResource: fileName, ofType: "csv")!
            do{
                let csvData = try String(contentsOfFile: csvBundle, encoding: String.Encoding.utf8)
                let lineChange = csvData.replacingOccurrences(of: "\r", with: "\n")
                csvArray = lineChange.components(separatedBy: "\n")
                csvArray.removeLast()
            } catch{
                print("エラー")
            }
            return csvArray
        }
        
        csvArray = loadCSV(fileName: "ad")
        
        //広告情報の配列を曜日ごとの配列に変換
        for i in 0..<csvArray.count{
            if csvArray[i].contains("(木)"){
                csvArrayThu0.append(csvArray[i])
            }else if csvArray[i].contains("(金)"){
                csvArrayFri0.append(csvArray[i])
            }else if csvArray[i].contains("(土)"){
                csvArraySat0.append(csvArray[i])
            }else if csvArray[i].contains("(日)"){
                csvArraySun0.append(csvArray[i])
            }else if csvArray[i].contains("(月)"){
                csvArrayMon0.append(csvArray[i])
            }else if csvArray[i].contains("(火)"){
                csvArrayTue0.append(csvArray[i])
            }else if csvArray[i].contains("(水)"){
                csvArrayWed0.append(csvArray[i])
            }
        }
        
        
        //広告情報の曜日ごとの配列を各項目ごとの配列に変換
        for i in 0..<csvArrayThu0.count{
            csvArrayThu.append(csvArrayThu0[i].components(separatedBy: ","))
        }
        
        
        for i in 0..<csvArrayFri0.count{
            csvArrayFri.append(csvArrayFri0[i].components(separatedBy: ","))
        }
        
        for i in 0..<csvArraySat0.count{
            csvArraySat.append(csvArraySat0[i].components(separatedBy: ","))
        }
        
        for i in 0..<csvArraySun0.count{
            csvArraySun.append(csvArraySun0[i].components(separatedBy: ","))
        }
        
        for i in 0..<csvArrayMon0.count{
            csvArrayMon.append(csvArrayMon0[i].components(separatedBy: ","))
        }
        
        for i in 0..<csvArrayTue0.count{
            csvArrayTue.append(csvArrayTue0[i].components(separatedBy: ","))
        }
        
        for i in 0..<csvArrayWed0.count{
            csvArrayWed.append(csvArrayWed0[i].components(separatedBy: ","))
        }
        
        //ボタンのタイトルを各曜日の配列の0番目から取得
        Button1.setTitle(csvArrayThu[0][0], for: .normal)
        Button2.setTitle(csvArrayFri[0][0], for: .normal)
        Button3.setTitle(csvArraySat[0][0], for: .normal)
        Button4.setTitle(csvArraySun[0][0], for: .normal)
        Button5.setTitle(csvArrayMon[0][0], for: .normal)
        Button6.setTitle(csvArrayTue[0][0], for: .normal)
        Button7.setTitle(csvArrayWed[0][0], for: .normal)
        
        print(csvArraySat)
        
        //ボタンの枠に対して適正な文字の大きさにする
        Button1.titleLabel?.adjustsFontSizeToFitWidth = true
        Button2.titleLabel?.adjustsFontSizeToFitWidth = true
        Button3.titleLabel?.adjustsFontSizeToFitWidth = true
        Button4.titleLabel?.adjustsFontSizeToFitWidth = true
        Button5.titleLabel?.adjustsFontSizeToFitWidth = true
        Button6.titleLabel?.adjustsFontSizeToFitWidth = true
        Button7.titleLabel?.adjustsFontSizeToFitWidth = true
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    //ボタン1が押されたときの処理
    @IBAction func pushButton1(_ sender: Any) {
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "adPage") as! adViewController
        let delegate = UIApplication.shared.delegate as! AppDelegate
        nextView.adInfo = csvArrayThu
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
    //ボタン2が押されたときの処理
    @IBAction func pushButton2(_ sender: Any) {
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "adPage") as! adViewController
        let delegate = UIApplication.shared.delegate as! AppDelegate
        nextView.adInfo = csvArrayFri
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
    
    //ボタン3が押されたときの処理
    @IBAction func pushButton3(_ sender: Any) {
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "adPage") as! adViewController
        let delegate = UIApplication.shared.delegate as! AppDelegate
        nextView.adInfo = csvArraySat
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    //ボタン4が押されたときの処理
    @IBAction func pushButton4(_ sender: Any) {
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "adPage") as! adViewController
        let delegate = UIApplication.shared.delegate as! AppDelegate
        nextView.adInfo = csvArraySun
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    //ボタン5が押されたときの処理
    @IBAction func pushButton5(_ sender: Any) {
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "adPage") as! adViewController
        let delegate = UIApplication.shared.delegate as! AppDelegate
        nextView.adInfo = csvArrayMon
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
    //ボタン6が押されたときの処理
    @IBAction func pushButton6(_ sender: Any) {
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "adPage") as! adViewController
        let delegate = UIApplication.shared.delegate as! AppDelegate
        nextView.adInfo = csvArrayTue
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
    //ボタン7が押されたときの処理

    @IBAction func pushButton7(_ sender: Any) {
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "adPage") as! adViewController
        let delegate = UIApplication.shared.delegate as! AppDelegate
        nextView.adInfo = csvArrayWed
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
}


