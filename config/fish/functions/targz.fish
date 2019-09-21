function targz
  set -l tmpFile "$argv.tar"

  tar -cvf $tmpFile --exclude='.DS_Store' $argv; or return 1

  echo 'Compressing .tar using gzip...'
  gzip $tmpFile; or return 1

  if test -f $tmpFile
    rm $tmpFile
  end

  echo "$tmpFile.gz created successfully."
end
