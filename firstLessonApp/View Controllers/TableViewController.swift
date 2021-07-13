//
//  TableViewController.swift
//  First
//
//  Created by Oleksandr on 06.07.2021.
//

import UIKit

struct User: Decodable {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let gender: String
    let picture: String
    
}

class TableViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var users: [User] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
                tableView.estimatedRowHeight = 45
      
        users = getUsersList()
    }
    
    func getUsersList() -> [User] {

            if let path = Bundle.main.path(forResource: "users", ofType: "json") {

                do {
                    let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)

                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let users: [User] = try decoder.decode([User].self, from: data)

                    return users
                } catch {
                    print(error)
                    // handle error
                    return []
                }
            }
            return []
        }
}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DigitCell", for: indexPath) as! DigitTableViewCell
        let user = users[indexPath.row]
        cell.userName.text = user.firstName + " " + user.lastName
        cell.phoneNumberLabel.text = user.phoneNumber
        print("Section = \(indexPath.section), Row = \(indexPath.row)")
        return cell
    }
    
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 82
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let userDetails = storyboard?.instantiateViewController(identifier: "UserDetailsViewController") as? UserDetailsViewController {
            
            let user = users[indexPath.row]
            userDetails.user = user
            navigationController?.pushViewController(userDetails, animated: true)
        }
        tableView.deselectRow(at: indexPath, animated: true)
        
        print("Did select: Section = \(indexPath.section), Row = \(indexPath.row)")
    }
}
