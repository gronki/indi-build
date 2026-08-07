rm -rf indi
rm -rf indi-3rdparty

INDI_VERSION=v2.0.0
INDI_VERSION=v2.1.6

git clone --depth 1 --branch $INDI_VERSION https://github.com/indilib/indi.git
git clone --depth 1 --branch $INDI_VERSION https://github.com/indilib/indi-3rdparty.git
