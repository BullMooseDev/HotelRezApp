//
//  GuestRegistrationVC.swift
//  Reservations
//
//  Created by Toby Youngberg on 3/14/23.
//

import UIKit

class GuestRegistrationVC: UITableViewController {
    var reservation: Reservation?

    @IBOutlet weak var checkInLabel: UILabel!
    @IBOutlet weak var checkInPicker: UIDatePicker!
    
    let checkInDateIndexPath = IndexPath(row: 0, section: 0)
    let checkInDatePickerIndexPath = IndexPath(row: 1, section: 0)
    
    var checkInDatePickerVisible = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        checkInPicker.minimumDate = Date()
        
        if reservation == nil {
            reservation = Reservation(firstName: "", lastName: "", emailAddress: "", checkInDate: Date(), checkOutDate: Date(), numberOfAdults: 0, numberOfChildren: 0, roomType: RoomType(id: 0, name: "Basic", shortName: "basic", price: 100), wifi: false)
        }
        
        checkInLabel.text = reservation?.checkInDate.formatted(date: .abbreviated, time: .omitted)
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath {
        case checkInDatePickerIndexPath where checkInDatePickerVisible == false:
            return 0
        default:
            return UITableView.automaticDimension
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath {
        case checkInDateIndexPath:
            checkInDatePickerVisible.toggle()
//            tableView.reloadSections([0], with: .automatic)
            tableView.reloadData()
        default:
            break
//            checkInDatePickerVisible = false
        }
        
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
