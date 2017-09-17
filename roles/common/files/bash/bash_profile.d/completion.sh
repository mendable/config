files=$(ls $(brew --prefix)/etc/bash_completion.d/* 2>/dev/null)
for file in ${files}; do
  source ${file}
done
