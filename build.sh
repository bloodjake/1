echo begin build
mkdir out
kotlinc -d out/new1.jar -include-runtime src
echo end build