class Dijkstra{

    var vertices: Set<Node>
    var finalVerticesState = Set<Node>()
    var distanciaPercorrida: String = ""

    init(vertices: Set<Node>){
        self.vertices = vertices
    }

    func printVerticeValues(){
        var line = "\n|----Vertices nao visitados--------"
        for i in vertices{
            line += "\n| Vertice:\(i.identificador) \n| Distancia: \(i.distanciaPercorrida) \n| VerticesPercorridos:"
            line += i.verticesPercorridos
            line += "\n|------------"
        }
        print(line)
    }

    func menorCaminho(de verticeInicial:Node){
      
        verticeInicial.distanciaPercorrida = 0
        verticeInicial.verticesPercorridos += verticeInicial.identificador
        
        var verticeAtual: Node? = verticeInicial
        print("verticeInicial \(verticeInicial.identificador)")
        while let vertice = verticeAtual{
            printVerticeValues()
            distanciaPercorrida += "\(vertice.identificador)"
            print("\n aresta  selecionada \(vertice.verticesPercorridos.suffix(2)) com melhor caminho")
            finalVerticesState.insert(vertice)
            vertices.remove(vertice)
            let vizinhosFiltrados = vertice.vizinhos.filter { vertices.contains($0.0)}
            for vizinho in vizinhosFiltrados{
                let verticeVizinho = vizinho.vertice
                let distancia = vizinho.distancia
                
                let novaDistancia = vertice.distanciaPercorrida + distancia
                if novaDistancia < verticeVizinho.distanciaPercorrida{
                    verticeVizinho.distanciaPercorrida = novaDistancia
                    verticeVizinho.verticesPercorridos = vertice.verticesPercorridos + verticeVizinho.identificador
                    print("|Origem \(vertice.identificador)| vizinho:\(verticeVizinho.identificador),distancia:\(novaDistancia)")
                }
                
            }
            
            if vertices.isEmpty{
                print("|totalmente percorrido|")
                verticeAtual = nil
                break
            }
            
            verticeAtual = vertices.min {$0.distanciaPercorrida < $1.distanciaPercorrida}
            print("|Vertice escolhido:\(verticeAtual!.identificador) com valor \(verticeAtual!.distanciaPercorrida)|\n")
        }
    }
    func showArestasMenorCaminho(){
      print("---tabela de arestas------")
        for i in finalVerticesState{
            print("|\(i.identificador)|   (\(i.verticesPercorridos.suffix(2).dropLast()),\(i.verticesPercorridos.suffix(1)))     |")
        }
    }
    func showNLinha(){
        print("N' = \(distanciaPercorrida)")
    }
}