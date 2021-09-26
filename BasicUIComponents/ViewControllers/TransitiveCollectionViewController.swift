//
//  TransitiveCollectionViewController.swift
//  BasicUIComponents
//
//  Created by Burak on 25.09.2021.
//

import UIKit

class TransitiveCollectionViewController: UIViewController {

    private var movies : [Movies] = []
    @IBOutlet weak var collectionView: UICollectionView!
    var bufferCellSizeBool : Bool = false
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        addLeftBarButtonItemToNavigationController()
        fillMoviesArray()
    }

    
    //MARK: - Helper Functions
    private func addLeftBarButtonItemToNavigationController(){
        let rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "text.justify"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(changeCollectionViewCellDimension))
        rightBarButtonItem.tintColor = .black
        navigationItem.rightBarButtonItem = rightBarButtonItem
    }
    
    @objc func changeCollectionViewCellDimension(){
        bufferCellSizeBool.toggle()
        self.collectionView.reloadData()
    }
    
    private func fillMoviesArray(){
        movies.append(Movies(image: UIImage(named: "batman")!, name: "The Dark Knight"))
        movies.append(Movies(image: UIImage(named: "inception")!, name: "Inception"))
        movies.append(Movies(image: UIImage(named: "interstellar")!, name: "Interstellar"))
        movies.append(Movies(image: UIImage(named: "kill")!, name: "Kill Bill"))
        movies.append(Movies(image: UIImage(named: "pulp")!, name: "Pulp Fiction"))
        movies.append(Movies(image: UIImage(named: "batman")!, name: "The Dark Knight"))
        movies.append(Movies(image: UIImage(named: "inception")!, name: "Inception"))
        movies.append(Movies(image: UIImage(named: "interstellar")!, name: "Interstellar"))
        movies.append(Movies(image: UIImage(named: "kill")!, name: "Kill Bill"))
        movies.append(Movies(image: UIImage(named: "pulp")!, name: "Pulp Fiction"))
        movies.append(Movies(image: UIImage(named: "batman")!, name: "The Dark Knight"))
        movies.append(Movies(image: UIImage(named: "inception")!, name: "Inception"))
        movies.append(Movies(image: UIImage(named: "interstellar")!, name: "Interstellar"))
        movies.append(Movies(image: UIImage(named: "batman")!, name: "The Dark Knight"))
        movies.append(Movies(image: UIImage(named: "inception")!, name: "Inception"))
        movies.append(Movies(image: UIImage(named: "interstellar")!, name: "Interstellar"))
        movies.append(Movies(image: UIImage(named: "batman")!, name: "The Dark Knight"))
        movies.append(Movies(image: UIImage(named: "inception")!, name: "Inception"))
        movies.append(Movies(image: UIImage(named: "interstellar")!, name: "Interstellar"))
    }
}


extension TransitiveCollectionViewController : UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TransitiveCollectionViewCell", for: indexPath) as! TransitiveCollectionViewCell
        let item = movies[indexPath.row]
        cell.configureCell(image: item.image)
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor.systemGray.cgColor
        return cell
    }
}

extension TransitiveCollectionViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width - 20 // -20's means 10 leading, 10 trailing padding
        return bufferCellSizeBool ? CGSize(width: screenWidth / 2 - 5, height: 250) : CGSize(width: screenWidth, height: 250)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
    }
}
