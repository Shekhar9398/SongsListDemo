
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var songsView: UITableView!
    
    let songsList: Array = ["Tum hi ho","Chaya hai jo dilpe","Arziyaan","Mahiyaa","Aadat","Muskurane ki wajah","Rabba main to","Aaj din chadheyan","Tu bhoola jise","Afsan banake tu bhool n jana","Dil ki hai tammana", "Bekhayali","Mera ishque sufiyana"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songsView.tableFooterView = UIView()
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SongTableViewCell = songsView.dequeueReusableCell(withIdentifier: "songs", for: indexPath) as! SongTableViewCell
        
        cell.cellLabel.text = songsList[indexPath.row]
        
        //        cell.textLabel?.text = songsList[indexPath.row]
        //        cell.textLabel?.textColor = .white//UIColor.white
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "My FavoriteSongs"
    }
}











