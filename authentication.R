
library(ROAuth)
library(twitteR)

consumer_key <-  "qWdbUaJbNHEQCyx53dPNExxiv"
consumer_secret <- "GVpzSznWu9fbLL9dVTiDaFi373bkSedwOo0P00yPyuu1e9jQCe"
access_token <- "541416681-J1nFncJnQJdFyz0e89pcxVAy7IwGrJ2pA0jt2ley"
access_secret <- "Xy68VcrwLPkU27184k2JnUraH0CnMbtH3snLzY2C9nMxE"

download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem") #downloads the certificate

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

cred <- OAuthFactory$new(consumerKey=consumer_key, 
	consumerSecret=consumer_secret,
	requestURL='https://api.twitter.com/oauth/request_token',
	accessURL='https://api.twitter.com/oauth/access_token',
	authURL='https://api.twitter.com/oauth/authorize')

cred$handshake(cainfo="cacert.pem")
