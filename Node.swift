class Node {
    var identificador: String
    var vizinhos: [(vertice:Node,distancia:Double)] = []
    var distanciaPercorrida = Double.infinity
    var verticesPercorridos: String = ""
    
    init(identificador: String){
        self.identificador = identificador
    }
    
}
extension Node: Hashable {
    var hashValue: Int {
        return identificador.hashValue
    }
}

extension Node: Equatable {
    public static func ==(lhs: Node, rhs: Node) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}