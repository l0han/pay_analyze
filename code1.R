
library(RODBC)
channel <- odbcConnect("ODBC2", uid="root", pwd="950806")
sqlTables(channel)
alipay<-sqlFetch(channel,'alipay')
#取出退款数据
library(tidyverse)
refund<-alipay%>%separate(tran_no,sep = '_',into = c('tran_no1','tran_no2')) %>% filter(!is.na(tran_no2))
