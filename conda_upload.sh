conda install conda-build  
conda install anaconda-client 
USER=f0xy  
conda config --set anaconda_upload no  
conda build . -c conda-forge -c jgomezdans
export CONDA_PACKAGE=`conda build --output . -c conda-forge -c jgomezdans| grep bz2`
echo $CONDA_PACKAGE
ls -lah $CONDA_PACKAGE
anaconda -t $CONDA_UPLOAD_TOKEN upload -u $USER $CONDA_PACKAGE --force
