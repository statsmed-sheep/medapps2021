library(magick)
library(hexSticker)
caduceus <-image_read("https://symbolsarchive.com/wp-content/uploads/2021/01/593px-Caduceus_1924.svg_.png")
sticker(caduceus, package = "medapps2021", p_color = "#FFFFFF", h_color ="#FFFFFF", h_fill = "#7393B3",
        filename="hex_medapps2021.png", p_size = 6, p_y = 1, s_x = 1, s_y =.75, s_width = 1.3, s_height = 1.8)
