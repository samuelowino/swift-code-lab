//
//  main.swift
//  ConcurrencyAndCombine
//
//  Created by Samuel Owino on 15/12/2021.
//

import Foundation

// Example: Concurrency - Load Pictures

func getPhotoNames() async -> [String] {
	let photos = ["Summer", "Dinner","lunch","space","moon"]
	await Task.sleep(10)
	return photos
}

func listPhotos(inGallery name: String) async -> [String] {
	let result = await getPhotoNames()
    print("Found \(result.count) photos in \(name) gallery")
    for photo in result {
        print("Photo: \(photo)")
    }
	return result
}

func runner() {
    Task {
        let photoNames = await listPhotos(inGallery: "Summer Vacation")
        let sortedNames = photoNames.sorted()
        print("Sorted photos")
        for sortedName in sortedNames {
            print(sortedName)
        }
    }
}

runner()
