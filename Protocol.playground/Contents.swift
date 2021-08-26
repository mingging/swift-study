import UIKit

// Protocol 정의와 구현
protocol SamplePropProtocol {
    var name : String {get set}
    var description : String {get}
}

struct PropertyProtocolImpl : SamplePropProtocol {
    var name:String
    var description: String {
        return "Name : \(self.name)"
    }
    
    init(name:String){
        self.name = name
    }
}

class SampleClass : SamplePropProtocol {
    var name:String
    var description: String {
        return name
    }
    
    init(name:String) {
        self.name = name
    }
}

var sample = SampleClass(name:"홍길동")
sample.name
print(sample.description)

protocol SampleMethodProtocol {
    func execute(cmd : String)
    func showPort(port : Int) -> String
}

struct Process : SampleMethodProtocol {
    func execute(cmd: String) {
        if (cmd == "start") {
            print("실행합니다")
        }
    }
    func showPort(port:Int) -> String {
        return "Port : \(port)"
    }
}

var process = Process()
process.execute(cmd: "start")
print(process.showPort(port: 8080))
