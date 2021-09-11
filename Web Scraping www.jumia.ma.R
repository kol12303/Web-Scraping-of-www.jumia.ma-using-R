library(rvest)
library(dplyr)

link="https://www.jumia.ma/oppo/"

page=read_html(link)

name=page %>% html_nodes(".name") %>% html_text()
price=page %>% html_nodes(".prc") %>% html_text()
rating=page %>% html_nodes(".in") %>% html_text()
old_price=page %>% html_nodes(".old") %>% html_text()
discount=page %>% html_nodes("._dsct") %>% html_text()
prod_link=page %>% html_nodes("._dsct") %>% html_text()

na.omit(name,price,rating,old_price)

jumia=data.frame(name,price,rating,old_price,discount,prod_link, StringsAsFactors=FALSE)


write.csv(jumia, jumia_data.csv)


D= unlist(words)
