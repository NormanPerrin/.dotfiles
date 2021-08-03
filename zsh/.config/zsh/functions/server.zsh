# Credits to https://codemadness.org/paste-service.html for the idea!
pastesrv() {
	ssh me "cat > /var/www/paste.nperrin.io/$1"
	echo "https://paste.nperrin.io/$1"
}

pastesrv_private() {
    pastesrv "$(random_hash)"
}
