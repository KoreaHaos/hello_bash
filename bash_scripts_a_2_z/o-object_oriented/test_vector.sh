# source : http://hipersayanx.blogspot.kr/2012/12/object-oriented-programming-in-bash.html
# Import the class definition file.
source vector.sh
 
function main()
{
    # Create the vectors objects. (1)
    
    echo Creating vector1 and vector2.
    
    Vector 'vector1' 1 2 3
    Vector 'vector2' 7 5 3
 
    
    echo Showing properties of vector1 and vector2 properties.

    echo "vector1 ($vector1_x, $vector1_y, $vector1_z)"
    echo "vector2 ($vector2_x, $vector2_y, $vector2_z)"
 
    echo Calling  vector1 and vector2 show methods.
    
    $vector1_show
    $vector2_show
 
    echo Adding vector1 and vector2 with add method.

    $vector1_add vector2
}
 
main