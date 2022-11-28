if [ -z ${CONDA_BUILD_STATE+x} ]; then
    if [ -n ${CMAKE_GENERATOR+x} ]; then
        export _CONDA_SET_SKBUILDCORE_CMAKE_GENERATOR="$CMAKE_GENERATOR"
        unset CMAKE_GENERATOR
    fi
fi

