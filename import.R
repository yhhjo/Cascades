# Importing Table 1 from Pesek et al 2020 Cascade Exhumation
library(tidyr)

ID <- "17OR-"
SAMP_ID <- c()
for (i in c(2:7, 9:12, 18:20)){
 if (i < 10){
   SAMP_ID <- c(SAMP_ID,(paste0(ID, "0", i)))
 } else SAMP_ID <- c(SAMP_ID,(paste0(ID, i)))
}

LAT <- c(42.806, 43.620, 43.636, 43.717, 44.116, 44.131, 44.568, 45.269, 45.303, 45.264, 46.948, 46.967, 42.666)
LON <- c(122.563, 122.584, 122.171, 122.404, 122.439, 122.190, 122.403, 121.819, 121.821, 121.875, 121.532, 121.238, 122.643)
ELEVATION <- c(1204, 866, 1004, 853, 307, 1154, 452, 825, 858, 1490, 917, 973, 627)
GEOLOGIC_UNIT <- c("Thi", "Thi", "Tbaa", "Trb", "Thi", "Trb", "Thi","Thi","Thi","Tib","Ti","Tv","Trb")
ROCK_TYPE <- c("Quartz diorite", "Quartz diorite", "Basalt", "Basalt", "Quartz diorite", "Basalt", "Porphyritic Granodiorite", "Quartz diorite", "Quartz diorite", "Basalt", "Quartz diorite", "Basalt", "Basalt")
IGSN <- c("IENDP0001", "IENDP0002", "IENDP0003", "IENDP0004", "IENDP0005", "IENDP0006", "IENDP0007", "IENDP0008", "IENDP0009", "IENDP000A", "IENDP000B", "IENDP000C", "IENDP000D")

pesek_table_1 <- list("ID" = SAMP_ID, "LAT(N)" = LAT, "LONG(W)" = LON, "ELEVATION(m)" = ELEVATION, "GEOLOGIC_UNIT" = GEOLOGIC_UNIT, 
                      "ROCK_TYPE" = ROCK_TYPE, "IGSN" = IGSN)

pesek_table_2 <- list("ID" = c("17OR-18", "17OR-19", "17OR-10", "17OR-11", "17OR-12", "17OR-09", "WCOS-2", "Galena_Mountain_Basalt",
                         "17OR-06", "17OR-07", "17OR-03", "WCOSNU-25", "17OR-05", "17OR-04", "17OR-02", "WCOSNU-11", "17OR-20") , 
                
                "Zr-U-Pb_ages" = list(23.76, NA, 9.72, 9.55, NA, NA, 
                                      c(16.4, 18.6), NA, 19.63, NA, NA, 23.52, NA, NA, 21.08, 18.15, NA
                                      ), 
                "Zr-U-Pb_uncertainty" = list(.26, NA, .18, .08, NA, NA,
                                             c(.2, .75), NA, .31, NA, NA, .72, NA, NA, .93, .43, NA
                                             ),
                
                "Ap-U-Pb_ages" = list(22.1, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
                "Ap-U-Pb_uncertainty" = list(2.5, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
                
                "Zr-U-Th/He_ages" = list(c(10.72,10.68,12.14,18.76), NA, 
                                         c(7.52, 7.58, 8.36, 8.66), 
                                         c(11.91, 8.79, 8.22, 5.26, 8.45), NA, NA,
                                         c(14.4, 18.1, 17, 19.2, 17.2), NA,
                                         c(14.97, 21.52, 15.49, 15.53, 13.9), NA, NA,
                                         c(31.1, 26.5, 28.7, 25.7, 27.8, 25.8), NA, NA, NA, NA, NA
                                         ),
                "Zr-U-Th/He_uncertainty" = list(c(.62,.60,.56,.84), NA,
                                                c(.34, .34, .38, .32), 
                                                c(.52, .40, .36, .24, .38), NA, NA, 
                                                c(1.2, 1.4, 1.4, 1.6, 1.4), NA, 
                                                c(.66, .92, .68, .68, .7), NA, NA,
                                                c(2.4, 2.2, 2.4, 2, 2.2, 2), NA, NA, NA, NA, NA
                                                ),
                
                "Ap-U-Th/He_ages" = list(c(5.4,5.4), NA,
                                         c(3.79, 4, 3.05, 3.01, 2.13), NA, NA,
                                         c(17.64, 10.33, 13.72, 10.45), c(16.3, 31.1, 25.7, 16.6, 14.9, 13.4, 20.4), 
                                         NA, NA, NA, 24.83, NA, NA, NA, 
                                         c(17.98, 19.86, 17.81, 21.04, 21.96), 
                                         c(18.4, 19.3, 20.7, 18, 18.7, 25.9, 27.3), NA
                                         ),
                
                "Ap-U-Th/He_unertainty" = list(c(.54, .19), NA,
                                               c(.38, 1.63, 1.15, .64, .67), NA, NA,
                                               c(3.93, .86, 1.74, 1.5), c(1, 3.6, 1.6, 1, .8, .8, 1.2), 
                                               NA, NA, NA, 1.29, NA, NA, NA, 
                                               c(1.29, 1.98, 2.57, 2.32, 2.34),
                                               c(1.2, 1.2, 1.2, 1.2, 1.2, 1.6, 1.6), NA
                                               ),
                
                "Basalt-Ar/Ar_ages" = list(NA, 27.68, NA, NA, 5.15, NA, NA, 6.3, NA, 7.7, NA, NA, 4.46, 11.41, NA, NA, 5.77
                                           ),
                "Basalt-Ar/Ar_uncertainty" = list(NA, .05, NA, NA, .01, NA, NA, .1, NA, .02, NA, NA, .02, .07, NA, NA, .01
                                                  )
                )
                