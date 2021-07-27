echo "Enter mysql user :"
read user
echo "Enter database name :"
read db_name
mysqldump -u "$user" -p "$db_name" > "$db_name".sql
wait
gzip "$db_name".sql
mv "$db_name".sql.gz ./../_private/ 
cd ./uploads
zip a -r uploads.zip
wait
mv uploads.zip ../../_private/
read -p "Press enter to continue"
