// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "CodableAlamofire",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(name: "CodableAlamofire", targets: ["CodableAlamofire"]),
    ],
    dependencies: [
   		.package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0-rc.1")
    ],	
    targets: [
    	.target(
			name: "CodableAlamofire", 
    		dependencies: ["Alamofire"]
    	),
    	.testTarget(
	    	name: "CodableAlamofireTests", 
	    	dependencies: ["CodableAlamofire"]
	    )
  	]
)
