//
//  ProfileManager.swift
//  Bankey
//
//  Created by Parinthon Puksuriwong on 6/4/2565 BE.
//

import Foundation

protocol ProfileManageable: AnyObject {
    func fetchProfile(forUserId: String, completion: @escaping(Result<Profile, NetworkError>) -> Void)
}

enum NetworkError: Error {
case serverError
case decodingError
}

class ProfileManager: ProfileManageable {
    func fetchProfile(forUserId userId: String, completion: @escaping (Result<Profile, NetworkError>) -> Void) {
        let url = URL(string: "https://fierce-retreat-36855.herokuapp.com/bankey/profile/\(userId)")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                guard let data = data, error == nil else {
                    completion(.failure(.serverError))
                    return
                }
                
                do {
                    let profile = try JSONDecoder().decode(Profile.self, from: data)
                    completion(.success(profile))
                    return
                } catch {
                    completion(.failure(.decodingError))
                }
            }
        }.resume()
    }
}
