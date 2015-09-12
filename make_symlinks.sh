for f in githooks/*
do
  echo "Processing file $f"
  FILENAME=$(basename $f)
  echo "ln -s -f ../../githooks/$FILENAME .git/hooks/$FILENAME"
  eval "ln -s -f ../../githooks/$FILENAME .git/hooks/$FILENAME"
done
