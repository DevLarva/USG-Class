//
//  main.swift
//  USG03
//
//  Created by 백대홍 on 2023/01/26.
//

import Foundation

struct Movie: Codable {
    let title: String
    let image: String
    
}

struct MovieResponse: Codable {
    let data: [Movie]
}

func doIt(data: Data?, response: URLResponse?, error: Error?) {
    print("do it!!!", data)
    // Data -> Swift Data Type
    do {
        let ret = try JSONDecoder().decode(MovieResponse.self, from: data!)
//        print("ret :", ret.data)
        for item in ret.data {
            print(item.title)
        }
    }
    catch {
        print("Error",error)
    }
}

func fetchMovieList() {
    print("fetchMovieList")
    // 1. URL
    let urlStr = "http://mynf.codershigh.com:8080/api/movies"
    let url = URL(string: urlStr)!
    
    // 2. Request
    let request = URLRequest(url: url)
        
    // 3. Session, Task
    let task = URLSession.shared.dataTask(with: request, completionHandler: doIt(data:response:error:))
    task.resume()
    
    let task2 = URLSession.shared.dataTask(with: request) { data, response, error in
        do {
            let ret = try JSONDecoder().decode(MovieResponse.self, from: data!)
            
            for item in ret.data {
                print(item.title)
                
            }
        }
        catch {
            print("Error", error)
            
        }
    }
}


fetchMovieList()
dispatchMain()
