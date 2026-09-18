/* Linker script for the STM32F303VCT6 with stack in CCM */
MEMORY {
    FLASH : ORIGIN = 0x10000000, LENGTH = 4096K
    RAM   : ORIGIN = 0x20000000, LENGTH = 512K
    SRAM8 : ORIGIN = 0x20080000, LENGTH = 4K
    SRAM9 : ORIGIN = 0x20081000, LENGTH = 4K
}

_stack_start = ORIGIN(CCRAM) + LENGTH(CCRAM);
_stack_end = ORIGIN(CCRAM); /* Optional, add if used by the application */
