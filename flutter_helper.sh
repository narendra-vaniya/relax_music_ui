echo "Enter 1 => init project"

read INDEX
if [ $INDEX==1 ]
then
    rm -r ./lib/
    mkdir ./lib/
    mkdir ./lib/views/
    mkdir ./lib/views_models/
    mkdir ./lib/repository/
    mkdir ./lib/services/
    mkdir ./lib/data_class/
    mkdir ./lib/helper/
    mkdir ./lib/themes/
    mkdir ./lib/routes/
    mkdir ./lib/assets/
    mkdir ./lib/assets/fonts/
    mkdir ./lib/assets/images/
    touch ./lib/assets/global_config.dart
    touch ./lib/assets/app_secret.dart
    touch ./lib/main.dart
    touch ./lib/app.dart
    
fi
