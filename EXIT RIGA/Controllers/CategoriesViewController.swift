//
//  CategoriesViewController.swift
//  EXIT RIGA
//
//  Created by vishal_singh on 06/04/21.
//

import UIKit
import collection_view_layouts

class CategoriesViewController: UIViewController,LayoutDelegate {
    @IBOutlet weak var topview: UIView!
    var layout: BaseLayout = FlickrLayout()
    private var cellSizes = [[CGSize]]()
    
    @IBOutlet weak var categoryColection: UICollectionView!
    
    let CatList = [UIImage(named: "shoping"),UIImage(named: "Food"),UIImage(named: "kid"),UIImage(named: "theater"),UIImage(named: "Maldivas"),UIImage(named: "festival")]
    let catName = ["Shoping","Kids","Food","Theaters","Maldivas","Festival"]
    override func viewDidLoad() {
        super.viewDidLoad()
        topview.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
        topview.layer.masksToBounds = true
        topview.layer.cornerRadius = 22
        layout.delegate = self
        layout.cellsPadding = ItemsPadding(horizontal: 1, vertical: 1)
        categoryColection.collectionViewLayout = layout
        categoryColection.reloadData()
        
    }
    
    
}
extension CategoriesViewController:UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return catName.count
    }
    
   
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as? CategoryCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.categoryImage.image = CatList[indexPath.row]
        cell.categoryname.text = catName[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "CategoryDetailViewController") as! CategoryDetailViewController
        navigationController?.pushViewController(nextVC, animated: true)
    }
    // MARK: - UICollectionViewDelegateFlowLayout
    
    func cellSize(indexPath: IndexPath) -> CGSize {
        return cellSizes[indexPath.section][indexPath.row]
    }

}
