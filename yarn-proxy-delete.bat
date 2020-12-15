###yarn config set proxy http://username:password@server:port
###yarn confit set https-proxy http://username:password@server:port

yarn config delete proxy
yarn config delete https-proxy

yarn config get proxy
yarn config get https-proxy
