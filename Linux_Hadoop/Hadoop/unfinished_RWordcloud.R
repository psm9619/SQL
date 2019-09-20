library(tm) ; library(wordcloud2)
library(dplyr)

rmwords <- c("a", "the", "A", "The", "and","but","And", "But", 
             "is", "are","Is","Are","was", "were","Was", "Were",
             "of", "in","this","that", "I", )

sub <- function (c){
  a <- c
  a <- lapply(a, function(x) tolower(a))
  for (i in rmwords) {
    a<-lapply(a, function(x) gsub(i, "", a))
  }
  lapply(c, )
}
sub(nixon$word)

nixon <- read.csv("test_nixon.csv",header = T, stringsAsFactors = F) %>%
  mutate(word=gsub(""))
  filter(!word %in% rmwords) %>%
  arrange(desc(count)) %>% 
  head(200)
obama <- read.csv("test_obama.csv", header = T,stringsAsFactors = F) %>%
  filter(!word %in% rmwords) %>%
  arrange(desc(count))  %>% 
  head(200)
roosevelt <- read.csv("test_roosevelt.csv", header = T,stringsAsFactors = F)%>%
  filter(!word %in% rmwords) %>%
  arrange(desc(count))  %>% 
  head(200)
tonyb <- read.csv("test_tony.csv",header = T, stringsAsFactors = F) %>%
  filter(!word %in% rmwords) %>%
  arrange(desc(count))  %>% 
  head(200)
trump <- read.csv("test_trump.csv", header = T,stringsAsFactors = F)%>%
  filter(!word %in% rmwords) %>%
  arrange(desc(count))  %>% 
  head(200)

dfs <- list(nixon, obama, roosevelt, tonyb, trump)
wcs <- c()
par(mfrow=c(3,2))
wordcloud2(nixon, size =1.6)










