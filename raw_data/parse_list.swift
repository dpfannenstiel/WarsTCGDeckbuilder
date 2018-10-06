#!/usr/bin/swift

import Foundation

let sample = """
<-- NEW CARD -->
Title: Assault Guru
Collector's Number: 1 C 4
Faction: Earther
Card Type: CHARACTER ¥ CISyn ¥ Tech ¥ Unit
Cost: 2
Destiny: 4
Support Cost: 1 Earther
Power: 1
Tactics: 1
Defense: 3
Game Text: As long as this character is at a site where you have a higher total tactics than your opponent, you cause attrition +2 here.
Lore: Sana Camrik is an assault guru for CISyn. She received her promotion for her valor during the Battle of Phobos.
ILLUSTRATOR: PAMELINA H
"""

if let data = sample.data(using: .utf8) {
	let inputStream = InputStream(data:data)
	inputStream.open()
	print(inputStream.hasBytesAvailable)
	inputStream.close()
}

