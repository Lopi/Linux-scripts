#!

openvas-nvt-sync
openvasmd --rebuild 
openvassd
openvasmd -p 9390 -a 127.0.0.1 
openvasad -a 127.0.0.1 -p 93939
gsad --http-only --listen=127.0.0.1 -p 9392

sh -c "gsd;sudo -s"
