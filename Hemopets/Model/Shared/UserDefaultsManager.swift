import Foundation

@frozen public struct UserDefaultsManager {
    static let userDefaults = UserDefaults.standard
    
    static func saveData<T: Encodable>(data: T, for key: String) throws {
        let jsonEncoder = JSONEncoder()
        if let savedData = try? jsonEncoder.encode(data) {
            userDefaults.set(savedData, forKey: key)
        } else {
            throw NSError()
        }
       
    }
    
    static func loadData<T: Decodable>(for key: String) throws -> T {
        let jsonDecoder = JSONDecoder()
        guard let loadData = userDefaults.data(forKey: key) else {
            throw NSError()
        }
        
        if let TData = try? jsonDecoder.decode(T.self, from: loadData) {
            return TData
        } else {
            throw NSError()
        }
        
    }
}
