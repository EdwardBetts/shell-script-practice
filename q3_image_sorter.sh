if ! test -d "$1" 
then
   echo The image sorter requires a directory as first argument. Exiting.
   exit 1
fi

out_name=`echo $1 | tr "/" "_"`
arglist=`find $1 -name "*.jpg" -printf "%T@-%p\n" | sort -n | cut -d- -f2-` 

if [  ${#arglist} -eq 0 ]
then
    echo No jpeg images found in directory
    exit 1
fi

convert -append $arglist ${out_name}.jpg

