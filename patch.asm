
// ; Definitions
arch    md.cpu
endian  msb

// ; Patched Output
output  "bin/Mortal Kombat Arcade Edition-br.bin",create

// ; Configuration
define   CONFIG_ROM_NAME("Mortal Kombat Arcade Edition                             ")
define   CONFIG_ROM_REGION("U")

origin ROM_START
    // ; Original File
    insert "bin/Mortal Kombat Arcade Edition.bin"
    
    // ; Includes
    include "asm/macros.asm"
    include "asm/constants.asm"
	include "asm/ponteiros.asm"
// ; Configuration
constant CONFIG_LANGUAGE(PORTUGUESE)

if (CONFIG_LANGUAGE == ENGLISH) {

	include "text/en/character.asm"

}


if (CONFIG_LANGUAGE == PORTUGUESE) {

    define   CONFIG_ROM_NAME("MORTAL KOMBAT EDIÇÃO ARCADE")
    define   CONFIG_ROM_REGION("JUE")

    
    include "text/br/character.asm"
}