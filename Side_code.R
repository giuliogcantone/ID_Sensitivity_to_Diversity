Data cleaning WoS


db_j %>%
  mutate(stnd_WoS_JSC = WoS_JSC %>%
           str_replace("Public, Environmental & Occupational Health",
                       "Public Health") %>%
           str_replace_all(",",":") %>%
           str_replace_all(" \\| ",", "),
         coarse_WoS_JSC = stnd_WoS_JSC %>%
           str_remove_all("\\:.*?(?=,|$)"),
         coarse_WoS_JSC =
           map_chr(str_split(coarse_WoS_JSC,", "),
                   ~ str_c(unique(.x), collapse = ", ")),
         mention_multidis = str_detect(tolower(WoS_JSC),"multidis|interdis"),
         n_stnd = str_count(stnd_WoS_JSC,","),
         multidis = if_else((n_stnd == 0) &
                              (mention_multidis == 0),
                            0,1)
  ) %>%
  mutate(x_concepts = map(x_concepts, ~ filter(.x,level < 2))
  ) -> db_j