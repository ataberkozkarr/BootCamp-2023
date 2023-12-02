//
//  ViewController.swift
//  ContactApps
//
//  Created by Ataberk Özkar on 27.11.2023.
//

import UIKit

class MainPage: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kisilerTableView: UITableView!
    var personCount = [Contact]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        
        
        let k1 = Contact(contact_id: 1, contact_name: "ata", contact_no: "111")
        let k2 = Contact(contact_id: 2, contact_name: "berkay", contact_no: "222")
        let k3 = Contact(contact_id: 3, contact_name: "burak", contact_no: "333")
        
        personCount.append(k1)
        personCount.append(k2)
        personCount.append(k3)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Anasayfaya dönüldü")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let person = sender as? Contact{ //DownCasting
                let toVC = segue.destination as! ContactDetail
                toVC.contact = person
                
            }
        }
    }
    
}

extension MainPage: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Person Search : \(searchText)")
    }
    
}

extension MainPage : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personCount.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = personCount[indexPath.row]
        
        let hucre = tableView.dequeueReusableCell(withIdentifier: "KisilerHucre") as! KisilerHucre
        hucre.labelKisiAd.text = kisi.contact_name
        hucre.labelKisiTel.text = kisi.contact_no
        return hucre
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = personCount[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction = UIContextualAction(style: .destructive, title: "Sil") {contextualAction,view,bool in
            let kisi = self.personCount[indexPath.row]
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(kisi.contact_name!) Silinsin mi ?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive){ action in print ("Kisi Sil \(kisi.contact_id!)")
                
            }
            alert.addAction(evetAction)
            
            self.present(alert, animated: true)
            
        }
        
        return UISwipeActionsConfiguration(actions: [silAction])
    }
}
