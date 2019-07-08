source=`cat input`
replacement=`cat output`


codemod -m -d ./ --extensions py \
    "$source" \
    "$replacement"


# To replace a function
source="def to_be_replaced\(param1, param2\):\s*variable1 = 'asd'\s*print\('data: {}'\.format\(variable1\)\)\s*return variable1"
replaced_data="def replaced(replaced_param):
    data1 = 'acs'
    number1 = 123
    print('data: {}, {}'.format(data1, number1))
    return (data1, number1)
"

codemod -m -d ./ --extensions py \
    $source \
    $replaced_data
