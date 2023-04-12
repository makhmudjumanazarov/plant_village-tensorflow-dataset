# Dmlab  Dataset Classification
-Transfer Learning using VGG19 CNN Model 

-Building the CNN architecture from scratch
### Description
The <a href= "https://www.tensorflow.org/datasets/catalog/dmlab">Dmlab dataset</a> contains frames observed by the agent acting in the DeepMind Lab environment, which are annotated by the distance between the agent and various objects present in the environment. The goal is to is to evaluate the ability of a visual model to reason about distances from the visual input in 3D environments. The Dmlab dataset consists of 360x480 color images in 6 classes. The classes are {close, far, very far} x {positive reward, negative reward} respectively.

-I have used the InceptionV3 CNN Model, which is pre-trained on the ImageNet dataset for classification. Data augementation has been used for making the model generalize better and also to avoid overfitting. The model achieved an accuracy of 80% on validation set, which is decent for this dataset.

-Then I have used the VGG19 CNN Model. which is pre-trained on the ImageNet dataset for classification. Data augementation hasn't been used for making the model generalize better. The model achieved an accuracy 23% on validation set. This is not a good situation, but I don't understand why.

-In last place,  I built vgg19 architecture from scratch via Tensorflow. I didn't use data augementation in this either for making the model generalize better. The model achieved an accuracy 1.25% for 10 epochs on validation set. This is a bad situation, but I don't understand why. I think there is not enough information for each class.

### Dataset
Contents of the dataset:
- Number of categories: 6
- Number of train images: 65550
- Number of test images: 22375
- Number of validation images: 22628

Sample images of 10 different categories from the dataset:

![Images of Dogs](/images/dmlab_images.jpg)

### Getting Started
The `stanford_dog.ipynb` notebook can be directly run on Jupyter Notebook or others. Use GPU for faster training and evaluation.

### Steps
<br />
<b>Step 1.</b> Clone <a href= "https://github.com/makhmudjumanazarov/stanford_dogs.git">this repository </a>
via Terminal, cmd or PowerShell
<br/><br/>
<b>Step 2.</b> Create a new virtual environment 
<pre>
python -m venv stanford_dogs
</pre> 
<br/>
<b>Step 3.</b> Activate your virtual environment
<pre>
source stanford_dogs/bin/activate # Linux
</pre>
<br/>
<b>Step 4.</b> Install dependencies and add virtual environment to the Python Kernel
<pre>
python -m pip install --upgrade pip
pip install -r requirements-gpu.txt # With Tensorflow GPU
pip install ipykernel
python -m ipykernel install --user --name=stanford_dogs
</pre>
<br/>
<b>Step 5.</b> 
<pre>
The `stanford_dog.ipynb` notebook can be directly run on Jupyter Notebook
</pre> 
<br/>


## Stanford dogs - Streamlit - Demo 

Stanford dogs via Streamlit 

[![Streamlit App](https://static.streamlit.io/badges/streamlit_badge_black_white.svg)](https://share.streamlit.io/makhmudjumanazarov/CIFAR100/main/app.py)
