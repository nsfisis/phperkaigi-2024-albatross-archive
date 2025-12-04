wget \
    --mirror \
    --page-requisites \
    --convert-links \
    --adjust-extension \
    --no-parent \
    --wait=1 \
    -P ./archive/ \
    https://t.nil.ninja/phperkaigi/2024/golf/

mv ./archive/t.nil.ninja/phperkaigi/2024/golf/* ./archive
rmdir ./archive/t.nil.ninja/phperkaigi/2024/golf/
rmdir ./archive/t.nil.ninja/phperkaigi/2024/
rmdir ./archive/t.nil.ninja/phperkaigi/
rmdir ./archive/t.nil.ninja/

mkdir -p ./archive/api/quizzes/{1,2,3}

wget -O ./archive/api/quizzes/1/chart.json https://t.nil.ninja/phperkaigi/2024/golf/api/quizzes/1/chart
wget -O ./archive/api/quizzes/2/chart.json https://t.nil.ninja/phperkaigi/2024/golf/api/quizzes/2/chart
wget -O ./archive/api/quizzes/3/chart.json https://t.nil.ninja/phperkaigi/2024/golf/api/quizzes/3/chart

sed -i -e 's#/chart`#/chart.json`#' ./archive/assets/chart.js
