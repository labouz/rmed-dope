library(magrittr)
library(DOPE)


# The text in question! -------------------------------------------------

story <- 'I was at a party, and I started with some Percocet and Vicodin.  
I think I had “a bunch” of Ambien.  
My buddy Keith took alprazolam (25mg) and he snorted "zip".  
Now I am trying to get Bup/Nx.'


parse(story)
# [1] "party"      "started"    "percocet"   "vicodin"   
# [5] "ambien"     "buddy"      "keith"      "alprazolam"
# [9] "snorted"    "zip"        "bup/nx"    

# DOPE supports the pipe! %>% ----------------------------------

story %>% 
  parse() %>% 
  lookup() %>% 
  compress_lookup() %>% 
  View()

