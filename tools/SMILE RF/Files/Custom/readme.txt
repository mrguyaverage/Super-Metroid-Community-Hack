You can use this folder to allow RF to open specific ROMs with different resources such as MDB, Level Entries, PLMs and Enemies, and more. Files that are missing in the custom ROM folders will be read from the general locations.
To use it, name the folder the same as the ROM. You can have as many different folders as you need. You should not include the file extension.

You can have multiple ROMs read from the same folder by using an underscore _ in the ROM filename. Everything including and after an underscore will be ignored.
	"TestHack.SFC" will load resources from "/Custom/TestHack/"
	"TestHack123.SFC" will load resources from "/Custom/TestHack123/"
	"TestHack_123.SFC" will load resources from "/Custom/TestHack/"