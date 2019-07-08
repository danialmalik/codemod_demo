source=`cat input`
replacement=`cat output`


codemod -m -d ./ --extensions py \
    "$source" \
    "$replacement"
