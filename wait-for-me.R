n <- 5
y <- numeric(n)
for ( i in seq_len(n)){
  y[[i]] <- i
  Sys.sleep(3)
}
sum(y)
