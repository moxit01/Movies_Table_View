//
//  MovieListViewController.swift
//  MovieList
//
//  Created by Moxit Shah on 20/03/22.
//

import UIKit

class MovieListViewController: UITableViewController {
    
    var movieList = MovieList(autofil: true)
    
    @IBOutlet var table: UITableView!
    
    @IBAction func AddMovie(_ sender: Any) {
//
//        let newRows = [
//        "Spider-Man No way Home",
//        "Wonder Woman",
//        "Justice League - Snyder's cut"]
        
//        movieList.addRow(movieTitle: newRows[Int.random(in: 0...2)])
//
//        table.insertRows(at: [IndexPath(row: 0, section: 1)], with: .top)

    }
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Movie Lists"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieList.movieList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)

        cell.textLabel?.text = movieList.movieList[indexPath.row]
                return cell
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            tableView.reloadData() // reloading the table view to add in new movie and refresh the table view
        }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movieList.movieList.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
             
            
        }    
    }
    


 //    Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
//        movieList.moveRow(from: fromIndexPath.row, to: to.row)

    }


    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dc = segue.destination as! AddMovieViewController
        dc.movieList = movieList
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
