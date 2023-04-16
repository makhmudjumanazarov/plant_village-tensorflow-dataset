import numpy as np
import pandas as pd
import streamlit as st
import tensorflow as tf
import cv2
from PIL import Image


# Load the trained model
model_load = tf.keras.models.load_model('model')

# Define the class labels
labels = ['Apple_scab', 'Apple_black_rot', 'Apple_cedar_apple_rust', 'Apple_healthy', 'Background_without_leaves', 'Blueberry_healthy', 'Cherry_powdery_mildew', 
          'Cherry_healthy', 'Corn_gray_leaf_spot', 'Corn_common_rust', 'Corn_northern_leaf_blight', 'Corn_healthy', 'Grape_black_rot', 'Grape_black_measles', 
          'Grape_leaf_blight', 'Grape_healthy', 'Orange_haunglongbing', 'Peach_bacterial_spot', 'Peach_healthy', 'Pepper_bacterial_spot', 'Pepper_healthy', 
          'Potato_early_blight', 'Potato_healthy', 'Potato_late_blight', 'Raspberry_healthy', 'Soybean_healthy', 'Squash_powdery_mildew', 'Strawberry_healthy', 
          'Strawberry_leaf_scorch', 'Tomato_bacterial_spot', 'Tomato_early_blight', 'Tomato_healthy', 'Tomato_late_blight', 'Tomato_leaf_mold', 'Tomato_septoria_leaf_spot',
          'Tomato_spider_mites_two-spotted_spider_mite', 'Tomato_target_spot', 'Tomato_mosaic_virus', 'Tomato_yellow_leaf_curl_virus']

# Get the uploaded image file
img_file_buffer = st.file_uploader("Upload an image", type=["png", "jpg", "jpeg"])


if img_file_buffer is not None:
    # Open the image and convert it to a numpy array
    image = Image.open(img_file_buffer)
    img_array = np.array(image)

# Normalization
normalization_layer = tf.keras.layers.Rescaling(1./255)

# If the "Predict" button is clicked
if st.button('Predict'):
    # view the image
    st.image(img_array)
    try:
        # Resize the image to match the input size of the model
        img_array = normalization_layer(cv2.resize(img_array.astype('uint8'), (224, 224)))

        # Add an extra dimension to represent the batch size of 1
        img_array = np.expand_dims(img_array, axis=0)

        # Get the predicted probabilities for each class
        val = model_load.predict(img_array)

        # Get the index of the class with the highest probability
        predicted_index = np.argmax(val[0])

        # Get the label corresponding to the predicted class
        predicted_label = labels[predicted_index]

        font_size = "24px"
        st.markdown("<h4 style='text-align: left; color: #2F3130; font-size: {};'>{}</h4>".format(font_size, predicted_label), unsafe_allow_html=True)
    except:
        pass