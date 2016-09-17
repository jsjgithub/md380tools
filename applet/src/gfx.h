/*! \file gfx.h
  \brief Graphics function wrappers.
*/

//! Draws wide text at an address by calling back to the MD380 function.
void drawtext(wchar_t *text,
	      int x, int y);
//! Draws ASCII on the screen.
void drawascii(char *ascii,
	       int x, int y);

void drawascii2(char *ascii,
                int x, int y);

void green_led(int on);
void red_led(int on);
void lcd_background_led(int on);


typedef struct gfx_pal {
  long	ncol;
  long  someb; 
  const char * palptr;
  } gfx_pal;


 
typedef struct gfx_bitmap {
  short            width;
  short            height;
  short            bytesperline;
  short            bitsperpixel;
  const char *     pixptr;
  const gfx_pal *  palstruct;
  const gfx_pal *  not_known;
  } gfx_bitmap;
                            
extern const gfx_bitmap bmp_eye;


struct gfx_jmptbl {
    void (*bg_fg_color_func)() ;
    void (*unk_func)() ;
};

/* @ 0x2001da1c */
typedef struct gfx_info {
    uint8_t unk[48];
    uint32_t fg_color ; // [48]
    uint32_t bg_color ; // [52]
    // ...
    struct gfx_jmptbl jmptable ; // [72]
    
} gfx_info_t ;
