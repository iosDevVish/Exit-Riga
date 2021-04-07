//
//  HomeViewController.swift
//  EXIT RIGA
//
//  Created by vishal_singh on 06/04/21.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var newsTableView: UITableView!
    let NewsList = [UIImage(named: "news1"),UIImage(named: "news2"),UIImage(named: "news3")]
    let newDicxription = ["638 new cases of Covid-19  registered in Latvia","End of state of emergency does not mean relaxingrestrictions: Kariņš","638 new cases of Covid-19 registered in Latvia"]
    override func viewDidLoad() {
        super.viewDidLoad()
        topView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
        topView.layer.masksToBounds = true
        topView.layer.cornerRadius = 22
        tabbarConfig()
    }
    

    func tabbarConfig(){
        guard let tabbar = self.tabBarController?.tabBar else {
            return
        }
        tabbar.barTintColor = #colorLiteral(red: 0, green: 0.5934850574, blue: 0.754871428, alpha: 0.8470588235)
        tabbar.layer.cornerRadius = 22
        tabbar.unselectedItemTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        tabbar.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        tabbar.layer.masksToBounds = true
        
        //tabbar.frame.size.height = 85
    }

}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NewsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell") as! NewsTableViewCell
       
        cell.newsImage.image = NewsList[indexPath.row]
        cell.newHeading.text = newDicxription[indexPath.row]
        return cell
   
    }
    
    
}
