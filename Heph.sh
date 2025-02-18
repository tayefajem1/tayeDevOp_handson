
#!/bin/bash
mkdir red
mkdir blue
mkdir green
cd red
cd ..
cd blue
cd ..
cd green
name="Abiola baby"
greeting="Hi"
echo "${greeting} ${name}"


read -p "What is your name? " name
echo "My name is ${name}"