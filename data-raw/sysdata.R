# Paletteers ----
paletteers = data.frame(type=c("continuous", "dynamic", "discrete"), stringsAsFactors = F)

paletteers$palettes = list(paletteer::palettes_c_names,
                           paletteer::palettes_dynamic_names %>% rename(palette=name),
                           paletteer::palettes_d_names)

paletteers = as_tibble(paletteers)


# Adapt_scales


# Save as internal data, for ggseg3d use only
usethis::use_data(paletteers,
                  internal = TRUE, overwrite = TRUE)
