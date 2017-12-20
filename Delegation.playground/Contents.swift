//: Playground - noun: a place where people can play

import UIKit

//Delegation is a design pattern where one object acts on behalf of other object 


protocol TopicDelegate{

    func topicStatusHasChanged(topic:Topic ,done: Bool )

}


class Topic {

var topicName = ""
var _done = false
    var delegate:TopicDelegate?
    var done:Bool{
        get {
        return _done
        }
        set{
        
        _done = newValue
            self.delegate?.topicStatusHasChanged(topic: self, done: _done)
        }
        
    }

}

class Session:TopicDelegate{

var sessionName = "swift"
var listOfTopics = [Topic]()
    func topicStatusHasChanged(topic: Topic, done: Bool) {
        let status = topic.done ? "DONE" : "INPROGRESS"
    print(" topic \(topic.topicName) is \(status)")
    
    
    }


}

var p = Session()

p.sessionName = "CORE DATA"

let topicNames = ["persistent store","Persistent Store coordinator", "MOM","MOC"]

for eachTopic in topicNames{

    var tp = Topic()

    tp.topicName = eachTopic
    
    tp.delegate = p
    
    p.listOfTopics.append(tp)
    
}

p.listOfTopics[0].done = true
p.listOfTopics[1].done = false

//Delegation involves communication between two objects where as observer involves communication to multiple objects
//Delegation involves two way communication i.e., it can return values
//observer can't return any value to the broadcaster.
//tight coupling between objects whereas observer is loose coupling
//single listener in delegation vs multiple listeners in observer design pattern
//delegation involves working with protocols, observer involves working with notifications












