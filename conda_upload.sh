conda install conda-build  
conda install anaconda-client 
PKG_NAME=siac && USER=f0xy  
#mkdir ~/conda-bld 
conda config --set anaconda_upload no  
#export CONDA_BLD_PATH=~/conda-bld 
#export VERSION=$SIAC_VERSION
conda build . -c conda-forge -c jgomezdans
export CONDA_PACKAGE=`conda build --output . -c conda-forge -c jgomezdans| grep bz2`
echo $CONDA_PACKAGE
ls -lah $CONDA_PACKAGE
anaconda -t $CONDA_UPLOAD_TOKEN upload -u $USER $CONDA_PACKAGE --force
