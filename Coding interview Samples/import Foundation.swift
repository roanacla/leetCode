// find and fix the error that may be on this code


import Foundation

extension Notification.Name {
    // Lets pretend that this is posted somewhere else when the network disconnects
    static let networkDidDisconnect = Notification.Name(rawValue: "networkDidDisconnect")
}

struct User: Codable {
    let username: String
    let firstName: String
    let lastName: String
    let dateOfBirth: Date
    let refreshToken: String
    
    // etc...
}

// There exists an application that allows a single user to log in. Once the user has logged in
// we use their credentials to authenticate all network requests. If an hour or more has passed
// the app must re-authenticate the user using a refresh token. For security reasons if there is a
// network error the user will be logged out completely and they must authenticate again.
class UserManager {
    
    static let shared = UserManager()
    
    private enum Endpoint {
        case auth(username: String, password: String)
        case refresh(token: String)
        case logout(token: String)
    }
    
    private let authenticationTimeout: TimeInterval = 3600.0 // 60 * 60
    private var cachedUser: User?
    private var authenticationDate: Date?
    
    init() {
        NotificationCenter.default
            .publisher(for: .networkDidDisconnect)
            .sink { _ in self.logout() }
    }
    
    func authenticate(username: String, password: String, completion: ((Result<User, Error>) -> Void)) {
      // cachedUser is not initiated, whe should move it down
        if let authenticationDate = authenticationDate, authenticationDate.timeIntervalSinceNow < authenticationTimeout {
          if let cachedUser {
            completion(.success(cachedUser))
          } else {
            completion(.failure(error))
          }
          return
        }
        
        if let cachedUser = cachedUser {
            request(endpoint: .refresh(token: cachedUser.refreshToken)) { [weak self] (result: Result<User, Error>) in
              guard let self else { return }
              switch result {
              case .success(let user):
                  self.cachedUser = user // ?? 
                  self.authenticationDate = Date()
                  completion(.success(cachedUser))
              case .failure(let error):
                  completion(.failure(error))
              }
            }
        } else {
            request(endpoint: .auth(username: username, password: password)) { (result: Result<User, Error>) in
                switch result {
                case .success(let user):
                    self.cachedUser = user
                    self.authenticationDate = Date()
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    }

    func handleResult(_ result: Result<User, Error>, completion: ((Result<T, Error>) -> Void)) {
      switch result {
        case .success(let user):
            self.cachedUser = user // ?? 
            self.authenticationDate = Date()
            completion(.success(cachedUser))
        case .failure(let error):
            completion(.failure(error))
        }
    }
    
    func logout() {
        request(endpoint: .logout(token: self.cachedUser?.refreshToken), completion: nil)
        cachedUser = nil
    }
    
    private func request<T: Decodable>(endpoint: Endpoint, completion: ((Result<T, Error>) -> Void)) {
        // Pretend we do some networking here with URLSession and return either a valid object or an error
    }
}
