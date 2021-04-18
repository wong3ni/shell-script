for f in `brew list --formula`; do 
    brew uninstall --ignore-dependencies --force $f
done
