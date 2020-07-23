#!/usr/bin/env bash

_DIR=$(cd "$(dirname "$0")"; pwd)
cd $_DIR

rm -rf dist/
rm -rf build/
python setup.py sdist
python setup.py bdist_wheel
python -m twine upload dist/*


