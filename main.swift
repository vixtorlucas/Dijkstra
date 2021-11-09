

var vertices = Set<Node>()
let a = Node(identificador: "A")
let b = Node(identificador: "B")
let c = Node(identificador: "C")
let d = Node(identificador: "D")
let e = Node(identificador: "E")
let f = Node(identificador: "F")
let g = Node(identificador: "G")

let vizinhosA = [(vertice:b,distancia:7.0),(vertice:d,distancia:5.0)]

for aNode in vizinhosA{
    a.vizinhos.append(aNode)
}

let vizinhosB = [(vertice:a,distancia:7.0),(vertice:d,distancia:9.0),(vertice:e,distancia:7.0),(vertice:c,distancia:8.0)]
for bNode in vizinhosB{
    b.vizinhos.append(bNode)
}

let vizinhosC = [(vertice:b,distancia:8.0),(vertice:e,distancia:5.0)]
for cNode in vizinhosC{
    c.vizinhos.append(cNode)
}

let vizinhosD = [(vertice:a,distancia:5.0),(vertice:b,distancia:9.0),(vertice:e,distancia:15.0),(vertice:f,distancia:6.0)]
for dNode in vizinhosD{
    d.vizinhos.append(dNode)
}

let vizinhosE = [(vertice:c,distancia:5.0),(vertice:b,distancia:7.0),(vertice:g,distancia:9.0),(vertice:f,distancia:8.0),(vertice:d,distancia:15.0)]

for eNode in vizinhosE{
    e.vizinhos.append(eNode)
}

let vizinhosF = [(vertice:d,distancia:6.0),(vertice:g,distancia:11.0),(vertice:e,distancia:8.0)]
for fNode in vizinhosF{
    f.vizinhos.append(fNode)
}

let vizinhosG = [(vertice:f,distancia:11.0),(vertice:e,distancia:9.0)]

for gNode in vizinhosG{
    g.vizinhos.append(gNode)
}

vertices.insert(a)
vertices.insert(b)
vertices.insert(c)
vertices.insert(d)
vertices.insert(e)
vertices.insert(f)
vertices.insert(g)

let dij = Dijkstra(vertices:vertices)
dij.menorCaminho(de: a)
dij.showArestasMenorCaminho()
dij.showNLinha()
