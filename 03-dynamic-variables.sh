PERSON1=$1
PERSON2=$2

echo "$PERSON1 : Hello! How can I assist you today?"
echo "$PERSON2 : Hi $PERSON1, Iam looking for a good book to read."
echo "$PERSON1 : Sure! What genre are you interested in?"
echo "$PERSON2 : I enjoy science fiction and fantasy."
echo "$PERSON1 : Great choices! I recommend 'Dune' by Frank Herbert for science"

sleep 5
echo "The name of the script is : $0"
echo "The first parameter is : $1"
echo "The second parameter is : $2"
echo "The total number of parameters passed is : $#"
echo "All the parameters passed are : $*"
echo "The process ID of the current script is : $$"
echo "The last executed command's exit status is : $?"