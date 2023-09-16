# metaNeuron
Neural network-based recognition of nueronal growth from two-photon live microscopy images.

## Concept outline

### Data Preprocessing:
- Load 3D images (multi-frame TIFFs) into a 3D NumPy array.
- Normalization of pixel values to a suitable range for neural networks [-1, 1].
- Manual annotation of axon bodies and protrusions in  [3D Slicer](https://www.slicer.org/) Annotated pictures are then used for model training.

### Neural Network Architecture:
- Use 3D convolutional layers to process the 3D data.
- Design detection/segmentation architectures to identify protrusions.
- Custom layer architecture depending on the complexity of the protrusions in 3D space.

### Training
- Choice/design of the loss function depending on the goal.
- Appropriate metrics based on outcome.

### Post-Processing
- Apply a threshold to the model's output to identify protrusions.
- Clustering in 3D space. Grouping of detected regions belonging to the same protrusion. (DBSCAN)
- Count the number of identified protrusions in each 3D image.

### Project milestones:
1. Basic segmentation <br>
1.1 Test annotations with [pre-trained 3D U-Net model](https://github.com/wolny/pytorch-3dunet) <br>
1.2 Build 2D [U-net](https://arxiv.org/abs/1505.04597) model <br>
1.3 Expand 2D network to 3D <br>
2. Tracking the amount of dendrites
3. Tracking of growth rate
