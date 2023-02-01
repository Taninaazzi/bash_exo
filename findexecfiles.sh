dossier="/usr/bin"
output_file="/home/kali/Desktop/output.txt"


if [ -f $output_file ]; then
$output_file
else
  touch $output_file
fi


for i in $(ls $dossier); do
  if [ -x "$dossier/$i" ]; then
    echo $i >> $output_file
  fi
done

echo "The list of executable files has been written to $output_file."