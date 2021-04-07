//
//  CategoryDetailViewController.swift
//  EXIT RIGA
//
//  Created by vishal_singh on 06/04/21.
//

import UIKit
import Mapbox

import MapboxMobileEvents


class CategoryDetailViewController: UIViewController {
   
    @IBOutlet weak var favriteList: UITableView!
    @IBOutlet weak var mapBoxview: MGLMapView!
    @IBOutlet weak var mapBtn: CustomButton!
    @IBOutlet weak var listBTN: CustomButton!
    @IBOutlet weak var topView: UIView!
    let NewsList = [UIImage(named: "cat1"),UIImage(named: "cat2"),UIImage(named: "cat3"),UIImage(named: "cat2")]
    let newDicxription = ["638 new cases of Covid-19 registered in Latvia","End of state of emergency does not mean relaxing restrictions: Kariņš","National Guard blasts Valmiera in lightning operation","End of state of emergency does not mean relaxing restrictions: Kariņš"]
    override func viewDidLoad() {
        super.viewDidLoad()
        topView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
        topView.layer.masksToBounds = true
        topView.layer.cornerRadius = 22
        let url = URL(string: "mapbox://styles/mapbox/streets-v11")
        let mapView = MGLMapView(frame: view.bounds, styleURL: url)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.setCenter(CLLocationCoordinate2D(latitude: 59.31, longitude: 18.06), zoomLevel: 9, animated: false)
        view.addSubview(mapView)
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func listButton(_ sender: UIButton) {
        mapBtn.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        listBTN.backgroundColor = #colorLiteral(red: 0, green: 0.5934850574, blue: 0.754871428, alpha: 0.8470588235)
        listBTN.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        mapBtn.setTitleColor(#colorLiteral(red: 0, green: 0.5934850574, blue: 0.754871428, alpha: 0.8470588235), for: .normal)
        self.mapBoxview.isHidden = true
        favriteList.isHidden = false
    }
    
    @IBAction func mapButton(_ sender: UIButton) {
        mapBtn.backgroundColor = #colorLiteral(red: 0, green: 0.5934850574, blue: 0.754871428, alpha: 0.8470588235)
        listBTN.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        mapBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        listBTN.setTitleColor(#colorLiteral(red: 0, green: 0.5934850574, blue: 0.754871428, alpha: 0.8470588235), for: .normal)
        
        self.mapBoxview.isHidden = false
        favriteList.isHidden = true
        
    }
    

}
extension CategoryDetailViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NewsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatDetailTableViewCell") as! CatDetailTableViewCell
        cell.catImage.image = NewsList[indexPath.row]
        cell.catheading.text = newDicxription[indexPath.row]
        return cell
   
    }
    
    
}
