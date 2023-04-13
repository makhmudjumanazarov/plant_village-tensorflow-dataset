# Plant Village  Dataset Classification
-Transfer Learning using ResNet-50, VGG-19, MobileNetV3 and InceptionV3 CNN Models 

-Building the CNN architecture from scratch

### Description
The PlantVillage dataset consists of more than healthy and unhealthy leaf images divided into 39 categories by species and disease.<a href= "https://arxiv.org/abs/1511.08060">Original paper URL</a>, <a href= "https://data.mendeley.com/datasets/tywbtsjrjv/1">Dataset URL</a>

-I have used the CNN Models in sequence accordingly, which is pre-trained on the ImageNet dataset for classification. Data augementation has been used for making the model generalize better and also to avoid overfitting.

1.The ResNet-50 achieved an accuracy 62% on validation set.
![Images of Plant village](/images/resnet50_evaluate.jpg)

2.The VGG-19 achieved an accuracy 91% on validation set.
![Images of Plant village](/images/vgg19_evaluate.jpg)

3.The MobileNetV3 achieved an accuracy 40% on validation set.
![Images of Plant village](/images/mobilenetV3_evaluate.jpg)

4.The InceptionV3 achieved an accuracy 90% on validation set.
![Images of Plant village](/images/inceptionV3_evaluate.jpg)

-Using Tensorflow, I built the architecture from scratch like exports' method. I have used the augmented data. The model achieved an accuracy 94% in 10 epochs on validation set. There is enough information for each class and the result is good!!!.

![Images of Plant village](/images/scratch.jpg)

### Data preprocessing
#### Unbalanced dataset
![Images of Plant village](/images/data_prev.png)

#### Balanced dataset
-Orange___Haunglongbing_(Citrus_greening)

-Soybean___healthy

-Tomato___Tomato_Yellow_Leaf_Curl_Virus


Since the number of images in the above three classes is more than the average number of images, we will take 2000 images in each class and delete the rest
![Images of Plant village](/images/data_next.png)

### Dataset
Contents of the dataset:
- Number of categories: 39
- Number of images: more than 60000

Sample images of 9 different categories from the dataset:

![Images of Plant village](/images/sample.png)

### Getting Started
The `plant_village.ipynb` notebook can be directly run on Jupyter Notebook or others. Use GPU for faster training and evaluation.

### Steps
<br />
<b>Step 1.</b> Clone <a href= "https://github.com/makhmudjumanazarov/plant_village-tensorflow-dataset.git">this repository </a>
via Terminal, cmd or PowerShell
<br/><br/>
<b>Step 2.</b> Create a new virtual environment 
<pre>
python -m venv plant_village
</pre> 
<br/>
<b>Step 3.</b> Activate your virtual environment
<pre>
source plant_village/bin/activate # Linux
</pre>
<br/>
<b>Step 4.</b> Install dependencies and add virtual environment to the Python Kernel
<pre>
python -m pip install --upgrade pip
pip install -r requirements-gpu.txt # With Tensorflow GPU
pip install ipykernel
python -m ipykernel install --user --name=plant_village
</pre>
<br/>
<b>Step 5.</b> 
<pre>
The plant_village.ipynb notebook can be directly run on Jupyter Notebook
</pre> 
<br/>

## Plant Village - Streamlit - Demo 

Plant Village via Streamlit 

[![Streamlit App](https://static.streamlit.io/badges/streamlit_badge_black_white.svg)](https://share.streamlit.io/makhmudjumanazarov/CIFAR100/main/app.py)
