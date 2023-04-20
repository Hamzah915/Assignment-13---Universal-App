//
//  TableViewController.swift
//  UniversalApp
//
//  Created by Hamzah Azam on 19/04/2023.
//

import UIKit

class TableViewController: UIViewController {
    
    var tableViewModel = TableViewModel(anyManager: NetworkManager())
    var item : Item?

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self

        TVMReloadData()

        // Do any additional setup after loading the view.
    }
    
    func TVMReloadData(){
        tableViewModel.getDataUsingClosures(url: "https://dummyjson.com/products")
        tableViewModel.reloadMyData = {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
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

extension TableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.item?.products.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let product = tableViewModel.item?.products[indexPath.row]
        cell.productsTitle.text = product?.title
//        cell.productsImage.image = product?.images
        return cell
    }



}

extension TableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = tableViewModel.item?.products[indexPath.row]
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let detailVC = storyBoard.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController else {return}
        detailVC.item = product
        self.navigationController?.pushViewController(detailVC, animated: true)

    }
}
