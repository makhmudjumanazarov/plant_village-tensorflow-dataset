import numpy as np
import pandas as pd
import streamlit as st
import cv2
from PIL import Image
from tensorflow.keras.models import load_model


model_load = load_model('model')

st.title('plant_village-tensorflow-dataset')
labels = ['Apple_scab', 'Apple_black_rot', 'Apple_cedar_apple_rust', 'Apple_healthy', 'Background_without_leaves', 'Blueberry_healthy', 'Cherry_powdery_mildew', 
          'Cherry_healthy', 'Corn_gray_leaf_spot', 'Corn_common_rust', 'Corn_northern_leaf_blight', 'Corn_healthy', 'Grape_black_rot', 'Grape_black_measles', 
          'Grape_leaf_blight', 'Grape_healthy', 'Orange_haunglongbing', 'Peach_bacterial_spot', 'Peach_healthy', 'Pepper_bacterial_spot', 'Pepper_healthy', 
          'Potato_early_blight', 'Potato_healthy', 'Potato_late_blight', 'Raspberry_healthy', 'Soybean_healthy', 'Squash_powdery_mildew', 'Strawberry_healthy', 
          'Strawberry_leaf_scorch', 'Tomato_bacterial_spot', 'Tomato_early_blight', 'Tomato_healthy', 'Tomato_late_blight', 'Tomato_leaf_mold', 'Tomato_septoria_leaf_spot',
          'Tomato_spider_mites_two-spotted_spider_mite', 'Tomato_target_spot', 'Tomato_mosaic_virus', 'Tomato_yellow_leaf_curl_virus']


img_file_buffer = st.file_uploader("Upload an image", type=["png", "jpg", "jpeg"])
if img_file_buffer is not None:
    image = Image.open(img_file_buffer)
    img_array = np.array(image)
    
if st.button('Predict'):
    try:
#         st.image(img_array)
        img_array = cv2.resize(img_array.astype('uint8'), (224, 224))
#         st.write(img_array.shape)
        img_array = np.expand_dims(img_array, axis=1)
#         st.write(img_array.shape)
        img_array = img_array.transpose((1,0,2,3))
        st.write(type(img_array))
#         val = model_load.predict(img_array)
#         output_text = labels[np.argmax(val[0])]
#         font_size = "24px"
#         st.markdown("<h4 style='text-align: left; color: #2F3130; font-size: {};'>{}</h4>".format(font_size, output_text), unsafe_allow_html=True)
    except:
        pass
