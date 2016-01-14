DIR=$( dirname "${BASH_SOURCE[0]}" )/source

for file in `ls ${DIR}`; do  echo "loading: ${file}"; source ${DIR}/$file; done;
