//
//  MovieList.swift
//  MovieList
//
//  Created by Moxit Shah on 20/03/22.
//

import Foundation

class MovieList{
    
    var movieList = [String]()
    
    init(autofil: Bool){
        if autofil{
            movieList = ["Eternals", "Dune", "No Time to Die", "Last night in Soho", "Ron's done wrong", "Halloween kills", "Venom", "Antlers", "The Addams Family 2", "MoxitMan"]
            
            //        for eachInitialMovie in initialMovieList{
            //            let movie = Movies(movieTitle: eachInitialMovie)
            //            movieList.append(movie)
        }
    }
    
    
    
    //    func deleteRow(index: Int){
    //        movieList.remove(at: index)
    //    }
    
    
    //    func moveRow(from: Int, to: Int){
    //        movieList.insert(movieList[from], at: to)
    //        movieList.remove(at: from)
    //    }
    
    
    
    func addMovie(movie: Movies){
        
        movieList.append(movie.movieTitle) //addig the new movie data to movielist
    }
    
    
    //    func addRow(movieTitle: String){
    //        let movieAdd = Movies(movieTitle: movieTitle)
    //        movieList.insert(movieAdd, at: 0)
    //    }
}

