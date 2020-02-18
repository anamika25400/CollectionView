

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate
{
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    var myArray = ["0","1","2","3","4","5","6","7"]
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return myArray.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
                  cell.lbl.text = myArray[indexPath.item]
                  return cell
                  
       }
       

 func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         print(indexPath.item)
    
}

}
