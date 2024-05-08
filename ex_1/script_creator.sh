#!/bin/bash

# Create a directory, delete it if it already exists
path_var="ex_1/important_files"
if [ -d $path_var ]; then
  rm -r $path_var
fi
mkdir $path_var
cd $path_var

# Number of scripts to create
script_number=10

# Casual shebangs
shebangs=("#!/bin/bash" "#!/bin/sh" "#!/usr/bin/python" "#!/usr/bin/perl" "#!/usr/bin/perl5.18" "#!/usr/sbin/dtrace -s")
size=${#shebangs}
i=0

# Create scripts and text files
while [ $i -lt $script_number ]
do
  r=$(((RANDOM % $size)+1)) # Random number between 0 and size
  echo ${shebangs[$r]} > script$i.sh
  echo 'echo "Hello from script'$i'.sh"' >> script$i.sh
  i=$((i+1))
done
max_=50
text_files=$(shuf -i 10-$max_ -n 1) # Random number between 10 and max_
i=0
while [ $i -lt $text_files ]
do
  echo "Hello from text file $i" > text$i.txt
  i=$((i+1))
done
echo "Directory and files created successfully!"
cd ..
