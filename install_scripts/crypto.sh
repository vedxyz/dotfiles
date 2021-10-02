action=$1
filepath="$2"
filename="$(basename $filepath)"

get_parent_dirname () {
	arg_dirname="$(dirname $(readlink -f $filepath))"
}

get_parent_dirname
cd $arg_dirname

case $action in
	"d"|"decrypt")
		gpg --cipher-algo AES256 -d --use-embedded-filename "$filename"
		;;
		
	"e"|"encrypt")
		gpg --cipher-algo AES256 --output "$filename.gpg" --symmetric $filename
		;;
esac


