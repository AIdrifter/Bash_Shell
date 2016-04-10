result=$(ls -l)
keyword=cat
string='My long string';

if [[ $string == *"My long"* ]]
then
      echo "It's there!";
fi
if [[ $result == *"cat"* ]]
then
    echo $result | grep --color $keyword
    echo "It's there! keyword";
fi
