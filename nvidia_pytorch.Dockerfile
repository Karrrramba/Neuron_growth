FROM pytorch/pytorch

RUN conda install notebook
# Install tifffile package for image processing
RUN conda install -c conda-forge tifffile
# Install nibabel for array transformation (as 3D Slicer input)
RUN conda install -c conda-forge nibabel

WORKDIR /project

COPY . /project