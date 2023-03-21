#
set -e

#
for directory in Library Download Cached Dataset Coding Coded; do
    #
    mkdir -p ${directory}
done

#
rm -f .bashrc-home
ln -s "${HOME}/.bashrc" .bashrc-home