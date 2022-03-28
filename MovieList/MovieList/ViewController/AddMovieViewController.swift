//
//  AddMovieViewController.swift
//  MovieList
//
//  Created by Moxit Shah on 28/03/22.
//

import UIKit

class AddMovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    var movieList : MovieList!
    
    @IBOutlet weak var MovieText: UITextField!

    @IBAction func AddMovieButton(_ sender: Any) {
        
        let MovieName = MovieText.text!
        let movie = Movies(movieTitle: MovieName)
        movieList.addMovie(movie: movie)
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
