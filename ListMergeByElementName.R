lst1 <- list(integers=data.frame(a=c(1:9), b = c(9:1)), letters=data.frame(b=letters[1:5]), words=data.frame(c=c("two", "strings")))
lst2 <- lst1

lst <- list(lst1, lst2)

l <- list(lst1, lst2)
keys <- unique(unlist(lapply(l, names)))
l.new <- setNames(do.call(mapply, c(FUN=rbind, lapply(l, `[`, keys))), keys)


