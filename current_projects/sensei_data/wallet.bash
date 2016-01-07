# Base class. (1)
function Token()
{
    # A pointer to this Class. (2)
    base=$FUNCNAME
    this=$1
 
    # Inherited classes (optional). (3)
    export ${this}_inherits="Class1 Class2 Class3" # (3.1)
 
    for class in $(eval "echo \$${this}_inherits")
    do
        for property in $(compgen -A variable ${class}_)
        do
            export ${property/#$class\_/$this\_}="${property}" # (3.2)
        done
 
        for method in $(compgen -A function ${class}_)
        do
            export ${method/#$class\_/$this\_}="${method} ${this}"
        done
    done
 
    # Declare Properties. (4)
    # export ${this}_x=$2

    # Declare methods. (5)
    for method in $(compgen -A function)
    do
        export ${method/#$base\_/$this\_}="${method} ${this}"
    done
}
 
function Token_set()
{
    base=$(expr "$FUNCNAME" : '\([a-zA-Z][a-zA-Z0-9]*\)')
    this=$1
    text_to_display=$2
 
    echo $text_to_display
}
 
function Token_get()
{
    base=$(expr "$FUNCNAME" : '\([a-zA-Z][a-zA-Z0-9]*\)')
    this=$1
    var1=$2
    var2=$3

    if [ "$var1" == "$var2" ]; then
    echo 'true';
    else
    echo "";
    fi
}