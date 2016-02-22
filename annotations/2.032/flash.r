# flash.r by Travis Goodspeed

# This is a Radare2 script for annotating the Tytera MD380
# application, version 2.032, which begins at 0x0800C000 in Flash
# memory.  Preceding it is a bootloader, which can be either the
# official factory bootloader or an aftermarket one.


# Begin by opening the application in R2 with this script.
# r2 -a arm -m 0x0800C000 -b 16 -i flash.r ../../firmware/D002.032.bin

# MD5 (../../firmware/D002.032.bin) = 8295594d00cb705eac7cd812642fccf2


## These annotations describe the functions that handle incoming
## audio, which is necessary to 

CCa 0x803ec86 This function handles incoming audio calls.
af+ 0x803ec86 740 dmr_audio_start

CCa 0x0803ee36 Nop this to crudely match on all public calls.
CCa 0x0803ef10 Nop this to crudely match on all private calls.

CCa 0x0803ee14 R5 will count through each public talk group.
CCa 0x0803ee1e If none matched, jump to where we'll mute the audio.
CCa 0x0803ee80 Here, we've tried to match all of the talk groups.
CCa 0x0803ee84 Skip ahead a bit if a match has been found.

CCa 0x0803ee66 Value of 9 enables audio reception.
CCa 0x0803ee8a Value of 8 enables light, but audio is muted.

CCa 0x8026136 ErrorStatus RTC_Init(RTC_InitTypeDef* RTC_InitStruct) \n Beginn Function ... Set RTC_CR (Hour format RTC_CR and RTC_PRER ) r0  arg[0] arg[1] arg[2]\narg[0] RTC_CR\arg[1] RTC_PRER\n arg[2] RTC_PRER 
CCa 0x802613e 0x80265b0 - 0x40002824 RTC write protection register (RTC_WPR)
CCa 0x8026142 0xca in r1
CCa 0x8026144 r1 into 0x40002824
CCa 0x8026146 0x80265b0  0x40002824 RTC write protection register (RTC_WPR)
CCa 0x802614a 0x53 in r1
CCa 0x802614c r1 into  0x40002824 ******* Enable Write
CCa 0x802614e no idear ??????
CCa 0x8026154 no idear ?????? why that?
CCa 0x8026156 function return val  #0
CCa 0x8026158 no idear ??????
CCa 0x802615a RTC_CR to  r0... 0x8026588 .. 0x40002808 RTC control register (RTC_CR)
CCa 0x802615e val RTC_CR in r0
CCa 0x8026160 FMT bits  r0 ... 0x40 .. 0100 0000 clear Bit 6 FMT Hour format
CCa 0x8026164 0x8026588  0x40002808 RTC control register (RTC_CR)
CCa 0x8026168 reset RTC_CR with FMT is cleard
CCa 0x802616a 0x8026588 0x40002808 RTC control register (RTC_CR)
CCa 0x802616e val RTC_CR to r0
CCa 0x8026170 value given via  address on function call
CCa 0x8026172 or arg [0]  with old RTC_CR
CCa 0x8026174 0x8026588  0x40002808 RTC control register (RTC_CR)
CCa 0x8026178 r0 to in RTC_CR
CCa 0x802617a arg [2] to r0
CCa 0x802617c 0x8026590  0x40002810 RTC prescaler register (RTC_PRER)
CCa 0x8026180 store val of arg [2]  RTC_PRER
CCa 0x8026182 0x8026590  0x40002810 RTC prescaler register (RTC_PRER)
CCa 0x8026186 val of RTC_PRER to r0
CCa 0x8026188 arg [1] to r1
CCa 0x802618a no idear ??????
CCa 0x802618e 0x8026590  0x40002810 RTC prescaler register (RTC_PRER)
CCa 0x8026192 r0 RTC_PRER
CCa 0x8026194 ??????????
CCa 0x8026198 #1 in r5
CCa 0x802619a 0x80265b0  0x40002824 RTC write protection register (RTC_WPR)
CCa 0x802619e 0xff
CCa 0x80261a0 ******* Disable Write
CCa 0x80261a2 r5 to r0
CCa 0x80261a4 retrun ( 0 bad , 1  good)
CCa 0x80261a6 end of function
