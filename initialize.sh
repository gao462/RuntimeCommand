#
set -e

#
for directory in Library Download Cached Dataset; do
    #
    mkdir -p ${directory}
done
mkdir -p Studio/Coding
mkdir -p Studio/Coded

#
rm -f .bashrc-home
ln -s "${HOME}/.bashrc" .bashrc-home