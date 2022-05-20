//
//  TelescopeAncestors.swift
//  swift-basics
//
//  Created by Samuel Owino on 20/05/2022.
//

import Foundation

let ancestors = (firstAncestor: "Spacelab Infrared Telescope (IRT)",
                 secondAncestor: "Infrared Space Observatory (ISO)",
                 thirdAncestor: "Hubble Space Telescope",
                 fourthAncestor: "Hubble Near Infrared Camera and Multi-Object Spectrometer (NICMOS)",
                 fifthAncestor: "Spitzer Space Telescope",
                 sixthAncestor: "Hubble Wide Field Camera 3 (WFC3)",
                 seventhAncestor: "Herschel Space Observatory",
                 eightAncestor: "James Webb Space Telescope")

print("The very first ancestor to the James Web Telescope is \(ancestors.firstAncestor)")
print("All ancestors to the James Web Telescope are: \(ancestors)")

func getTelescopeWavelength(telescope telescopeName: String) -> (Double, Double){
    var upperScale = 0.0
    var lowerScale = 0.0
    
    if telescopeName == ancestors.firstAncestor {
        upperScale = 118
        lowerScale = 1.7
    } else if telescopeName == ancestors.secondAncestor {
        upperScale = 240
        lowerScale = 2.5
    } else if telescopeName == ancestors.thirdAncestor {
        upperScale = 1.03
        lowerScale = 0.115
    } else if telescopeName == ancestors.fourthAncestor {
        upperScale = 2.4
        lowerScale = 0.8
    } else if telescopeName == ancestors.fifthAncestor {
        upperScale = 180
        lowerScale = 3
    } else if telescopeName == ancestors.sixthAncestor {
        upperScale = 1.7
        lowerScale = 0.2
    } else if telescopeName == ancestors.seventhAncestor {
        upperScale = 672
        lowerScale = 55
    }else {
        upperScale = 0.0
        lowerScale = 0.0
    }
    
    return (upperScale, lowerScale)
}

print("Ancestor telescope \(ancestors.firstAncestor) had a wavelength of \(getTelescopeWavelength(telescope: ancestors.firstAncestor).1) - \(getTelescopeWavelength(telescope: ancestors.firstAncestor).0)")
print("Ancestor telescope \(ancestors.secondAncestor) had a wavelength of \(getTelescopeWavelength(telescope: ancestors.secondAncestor).1) - \(getTelescopeWavelength(telescope: ancestors.firstAncestor).0)")
print("Ancestor telescope \(ancestors.thirdAncestor) had a wavelength of \(getTelescopeWavelength(telescope: ancestors.thirdAncestor).1) - \(getTelescopeWavelength(telescope: ancestors.firstAncestor).0)")
print("Ancestor telescope \(ancestors.fourthAncestor) had a wavelength of \(getTelescopeWavelength(telescope: ancestors.fourthAncestor).1) - \(getTelescopeWavelength(telescope: ancestors.firstAncestor).0)")

print("Ancestor telescope \(ancestors.fifthAncestor) had a wavelength of \(getTelescopeWavelength(telescope: ancestors.fifthAncestor).1) - \(getTelescopeWavelength(telescope: ancestors.firstAncestor).0)")
print("Ancestor telescope \(ancestors.sixthAncestor) had a wavelength of \(getTelescopeWavelength(telescope: ancestors.sixthAncestor).1) - \(getTelescopeWavelength(telescope: ancestors.firstAncestor).0)")
print("Ancestor telescope \(ancestors.seventhAncestor) had a wavelength of \(getTelescopeWavelength(telescope: ancestors.seventhAncestor).1) - \(getTelescopeWavelength(telescope: ancestors.firstAncestor).0)")
print("Ancestor telescope \(ancestors.eightAncestor) had a wavelength of \(getTelescopeWavelength(telescope: ancestors.eightAncestor).1) - \(getTelescopeWavelength(telescope: ancestors.firstAncestor).0)")


//Reflection
let tuple = (1, 2, "3")
let tupleMirror = Mirror(reflecting: tuple)
let tupleElements = tupleMirror.children.map({ $0.value })

for element in tupleElements {
    print("Tuple elemtn \(element)")
}
