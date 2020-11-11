#############################################
# pkgs
require(miniCRAN)

# create a new empty local mini-cran 
repo <- 'https://cran.wu.ac.at/'
path <- '/data/minicran1'
dir.create(path)
makeRepo(pkgs = NULL, path = path , repo = repo, type = 'source') 

# add pkgs with deps to the newly created minicran
addPackage("scuba", path = path, repos = repo, type = "source")
addPackage("stringr", path = path, repos = repo, type = "source")
my_pkgs <- c('stringr', 'scuba')
#############################################
# sistemista 

# verificare esistenza lib pkg 


#tre minicran 
prod ( 100)
test (101)
dev (102)

# tre installation dir system libs 
prod
test
dev
#############################################
# tre strategie 
(1) mantengo tutti i pkg locali o app shiny in funzione dei nuovi pkg ufficiali e delle nuove versioni di R 
(2) faccio il deploy di un pkg locale o app shiny  assieme a tutti i pkg ufficiali e alla versione di R utilizzati
(3) costruisco docker pubblico solo docker e me ne frego del resto

# da vedere 
/etc/Rprofile
require forzando repo
pkg interni dove metterli e come gestirli

app shiny come e discoveries ??
fissare next step 






