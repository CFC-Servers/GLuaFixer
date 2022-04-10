# Dev
# nix develop --command ./AGGenerator.sh
nix develop --command cabal v1-build
./dist/build/glualint/glualint --output-format github lint ./testcode

# Prod
# nix build
# cp -rv ./dist/build/glualint/glualint /out/glualint
