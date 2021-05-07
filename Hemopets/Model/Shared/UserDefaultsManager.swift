import Foundation

@frozen public struct UserDefaultsManager {
    static let userDefaults = UserDefaults.standard
    
    static func saveData<T: Encodable>(data: T, for key: String) throws {
        let jsonEncoder = JSONEncoder()
        let savedData = try jsonEncoder.encode(data)
       
        userDefaults.set(savedData, forKey: key)
    }
    
    static func loadData<T: Decodable>(for key: String) throws -> T {
        let jsonDecoder = JSONDecoder()
        guard let loadData = userDefaults.data(forKey: key) else {
            throw NSError()
        }
        
        let TData = try jsonDecoder.decode(T.self, from: loadData)
        
        return TData
    }
}
