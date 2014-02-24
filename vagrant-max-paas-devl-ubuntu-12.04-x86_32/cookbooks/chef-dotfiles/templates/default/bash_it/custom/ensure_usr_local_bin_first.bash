# Move /usr/local/bin to the front so homebrew programs are found first
function path_without_usr_local_bin () {
  IFS=':'
  t=($PATH)
  unset IFS
  t=(${t[@]%%*/usr/local/bin*})
  IFS=':'
  echo "${t[*]}"
  unset IFS
}

export PATH=/usr/local/php5/bin:/usr/local/bin:/usr/local/share/npm/bin:`path_without_usr_local_bin`

unset path_without_usr_local_bin
