import Foundation

@frozen public struct UserDefaultsManager {
    static let userDefaults = UserDefaults.standard
    
    static func saveData<T: Encodable>(data: T, for key: String) throws {
        let jsonEncoder = JSONEncoder()
        if let savedData = try? jsonEncoder.encode(data) {
            userDefaults.set(savedData, forKey: key)
        } else {
            throw ErrorType.errorSaving
        }
       
    }
    
    static func loadData<T: Decodable>(for key: String) throws -> T {
        let jsonDecoder = JSONDecoder()
        guard let loadData = userDefaults.data(forKey: key) else {
            throw ErrorType.errorLoading
        }
        
        if let TData = try? jsonDecoder.decode(T.self, from: loadData) {
            return TData
        } else {
            throw ErrorType.noDataFound
        }
        
    }
    
    static func deleteData(for key: String) {
        userDefaults.removeObject(forKey: key)
    }
    
    static func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}

private enum ErrorType: Error {
    case errorSaving
    case errorLoading
    case noDataFound
}
