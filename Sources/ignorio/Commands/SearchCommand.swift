//
//  SearchCommand.swift
//  ignorio
//
//  Created by Josef Dolezal on 01/06/2017.
//
//

import Commander
import IgnorioKit

let searchCommand = command(
    Argument<String>("TYPE", description: "Search for TYPE in available types at gitignore.io")
) { type in
    let matches = try search(for: type)

    if matches.count > 0 {
        print("Found \(matches.count) results for `\(type)`:")
        print(matches.joined(separator: " "))
    } else {
        print("No match for `\(type)`.")
    }
}
