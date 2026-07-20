mkdir arc3_debugger
cd arc3_debugger/
git add .
git status
git commit -am "vibe coded arc3_debugger pass 1"
git push
swipl -q   -s prolog/arc3_debugger.pl   -g arc3_debugger:demo   -t halt
cat python/
cat ../examples/
cat ../examples/*
cat ../examples/*.py
cls
cat ../examples/*.py
git add .
git add . -A
git add . -m
git status .
