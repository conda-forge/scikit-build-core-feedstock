python -m pip install . -vv

# Copy the [de]activate scripts to $PREFIX/etc/conda/[de]activate.d.
# This will allow them to be run on environment activation.
ACTIVATE_DIR=${PREFIX}/etc/conda/activate.d
DEACTIVATE_DIR=${PREFIX}/etc/conda/deactivate.d
mkdir -p ${ACTIVATE_DIR}
mkdir -p ${DEACTIVATE_DIR}

cp ${RECIPE_DIR}/scripts/activate.bat ${ACTIVATE_DIR}/${PKG_NAME}-activate.bat
cp ${RECIPE_DIR}/scripts/deactivate.bat ${DEACTIVATE_DIR}/${PKG_NAME}-deactivate.bat
cp ${RECIPE_DIR}/scripts/activate.sh ${ACTIVATE_DIR}/${PKG_NAME}-activate.sh
cp ${RECIPE_DIR}/scripts/deactivate.sh ${DEACTIVATE_DIR}/${PKG_NAME}-deactivate.sh
