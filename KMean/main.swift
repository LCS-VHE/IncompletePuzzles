//
//  main.swift
//  KMean
//
//  Created by Vincent He on 2020-10-27.
//

import Foundation

struct MathFunction{
    func distance(v1 : Vector, v2: Vector) -> Double {
        return sqrt(pow(v1.vet[0]-v2.vet[0], 2) + pow(v1.vet[1]-v2.vet[1], 2))
    }
    
    func find_max(v1: [Double]) -> Int{
        var maxindex = 0
        for index in 0...(v1.count - 1){
            if v1[maxindex] < v1[index]{
                maxindex = index
            }
        }
        return maxindex
    }
    
    func count_int(findingelement: Int, list: [Int]) -> Int{
        var count:Int = 0
        for element in list{
            if element == findingelement{
                count += 1
            }
        }
        return count
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
        if vet.vet.count != 2{
            Swift.print("Warning this is not right!!! ")
        }
        
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
    
    func equal(v1: [Double]){
        self.vet = v1
    }
    
    func equal(p1 : Vector){
        // Working on that
    }
    
    func divide(k: Double){
        var state = true
        for element in self.vet{
            if element == 0{
                Swift.print("Warning There is zero")
                state = false
            }
        }
        if k == 0{
            state = false
            Swift.print("Warning Division warning")
        }
        if state{
            for index in 0...(self.vet.count - 1){
                self.vet[index] = self.vet[index] / k
            }
        }
    }
    
    func divide(k: Int){
        var state = true
        for element in self.vet{
            if element == 0{
                Swift.print("Warning There is zero")
                state = false
            }
        }
        if k == 0{
            state = false
            Swift.print("Warning Division warning")
        }
        if state{
            for index in 0...(self.vet.count - 1){
                self.vet[index] = self.vet[index] / Double(k) // remove this in future (slow program)
            }
        }
    }
}

class KMeans{
    private var data : [Vector]
    private var centroids =  [Vector]()
    private var functions = MathFunction()
    
    init(data: [Vector], numCen: Int){
        self.data = data
        for _ in 0...(numCen - 1){
            self.centroids.append(Vector(vets: [Double.random(in: 0...1), Double.random(in: 0...1)])) // Generate a random centriod
        }
    }
    
    func fit(epochs: Int) {
        // This would start to compute the kmena algorithm
        
        for _ in 0...(epochs - 1){
            // Part One Finding the cloest centriod
            var indexs = [Int]()
            
            for data in self.data{
                var distances = [Double]()
                
                for centriod in self.centroids{
                    distances.append(self.functions.distance(v1: data, v2:centriod))
                }
                indexs.append(self.functions.find_max(v1:distances))
            }
            
            // Part Two computing the new centriod of kmean
            
            for index in 0...(self.centroids.count - 1){
                self.centroids[index] = Vector(vets: [0.0, 0.0])
            }
            
            for index in 0...(self.data.count - 1){
                self.centroids[indexs[index]] = self.centroids[indexs[index]].add (vet: self.data[index] )
            }
            
            // The division part of the algorithm
            for index in 0...(self.centroids.count - 1){
                self.centroids[index].divide(
                    k:self.functions.count_int(findingelement: index, list: indexs)
                )
            }
            
            // Printing the vectors
            Swift.print("Result===========")
            for vector in self.centroids{
                vector.print()
            }
            Swift.print("Result===========")
        }
    }
}

var data = [Vector]()
for _ in 0...100000{
    data.append(Vector(vets: [Double.random(in: -1000...1000), Double.random(in: -1000...100)] ))
}

var kmean = KMeans(data: data, numCen: 2)
kmean.fit(epochs: 1000)
