//
//  main.swift
//  TheCellSell
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/the-cell-sell.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

struct MathFunction{
    func distance(v1 : Vector, v2: Vector) -> Double {
        return sqrt(pow(v1.vet[0]-v2.vet[0], 2) + pow(v1.vet[1]-v2.vet[1], 2))
    }
}


class Vector{
    var vet: [Double]
    
    init (vets : [Double]){
        if vets.count != 2{
            Swift.print("Warning Vet DIM!=2")
        }
        self.vet = vets
    }
    
    func add(k: Double){ // Adding constant to vector
        for i in 0...(self.vet.count-1){
            vet[i] += k
        }
    }
    
    func add(vet: Vector) -> Vector{ // Vector addition
        //        var resutls : [Double]
        //        for index in 0...(vet.vet.count - 1){
        //            results.append(self.vet[index] + vet.vet[index])
        //        }
        
        return Vector(vets: [vet.vet[0] + self.vet[0], vet.vet[1] + self.vet[1]])
    }
    
    //    func dot(vet : Vector) -> Double{ // The dot product of the vector
    //
    //        for index in 0...(vet.vet.count -1){
    //            self.vet[index] += vet.vet[index]
    //        }
    //    }
    
    func minus(k: Double){
        for i in 0...(self.vet.count-1){
            vet[i] -= k
        }
    }
    
    func minus(vet:Vector) -> Vector{
        return Vector(vets: [vet.vet[0] - self.vet[0], vet.vet[1] - self.vet[1]])
    }
    func print(){
        for element in self.vet{
            Swift.print(element)
        }
    }
}

class KMeans{
    private var data : [Vector]
    private var centroid =  [Vector]()
    private var numcen : Int
    
    init(data: [Vector], numCen: Int){
        self.data = data
        self.numcen = numCen
        for _ in 0...(numCen){
            self.centroid.append(Vector(vets: [Double.random(in: 0...1), Double.random(in: 0...1)])) // Generate a random centriod
        }
    }
    
    func fit(){
        // This would start to compute the kmena algorithm
        Swift.print("Hello darkness")
    }
    
    
}

var data = [Vector]()
for _ in 0...100{
    data.append(Vector(vets: [1.1, 2.2]))
}

var kmean = KMeans(data: data, numCen: 3)
kmean.fit()
