# This is a basic if-else script
# run it with bash if_else.bash <optional arguement>
#
# example :$ bash bash_scripts_a_2_z/i-if_and_if_else_examples/if_else.bash test
# product :test
#

passed_in_arg=$1
if [ -z $passed_in_arg ];
then
    echo "No argument passed to script"
else
    echo "Argument passed to script = $passed_in_arg"
fi
