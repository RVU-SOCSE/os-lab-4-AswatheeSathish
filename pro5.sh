read -p "enter file name" fname
if [ -f "$fname" ];then
echo "error:File exists"
else
read -p "enter content" content
echo "$content">"$fname"
echo "File '$fname'created successfully"
fi

read -p "enter source file name" source
read -p "enter destination file name" dest
if [ -f "$source" ]; then
cp "$source" "$dest"
echo "file copied successfully"
else
echo "Error:Source file does not exist"
fi

read -p "Enter filename to move" source
read -p "enter new file name" dest
if [ -f "$source" ];then
mv "$source" "$dest"
echo "file moved successfully"
else
echo"error file does not exist"
fi

read -p"enter filenameto display" fname
if [ -f "$fname" ]; then
echo "content of'$fname'"
cat "$fname"
else
echo "error file does not exist"
fi
