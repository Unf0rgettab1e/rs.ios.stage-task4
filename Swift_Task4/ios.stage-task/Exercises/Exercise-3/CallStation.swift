import Foundation

final class CallStation {
    var usersList = [User]()
}

extension CallStation: Station {
    func users() -> [User] {
        return usersList
    }
    
    func add(user: User) {
        if !usersList.contains(user) {
            usersList.append(user)
        }
    }
    
    func remove(user: User) {

    }
    
    func execute(action: CallAction) -> CallID? {
        nil
    }
    
    func calls() -> [Call] {
        []
    }
    
    func calls(user: User) -> [Call] {
        []
    }
    
    func call(id: CallID) -> Call? {
        nil
    }
    
    func currentCall(user: User) -> Call? {
        nil
    }
}
