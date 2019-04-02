###
# Create a compressed base64 image from an image from sys.argv
# Setup:
# pip3 install pillow
# pip3 install requests
# Then:
# 
# usage: python3 image_to_base64.py <image-url>
###
import sys
from PIL import Image
import requests
from io import BytesIO
import base64


def open_img(url, is_local_file):
    if is_local_file:
        return Image.open(url)
    else:
        response = requests.get(url)
        img = Image.open(BytesIO(response.content))
        return img


def resize_img(img, target_width):
    width, height = img.size
    aspect_ratio = height / width
    target_height = int(aspect_ratio * target_width)

    resize = img.resize((target_width, target_height), Image.ANTIALIAS)
    return resize


def image_to_base64(image, f, q=75):
    buffered = BytesIO()
    image.save(buffered, optimize=True, format=f, quality=q)
    image_str = base64.b64encode(buffered.getvalue())
    return image_str


def url_to_base64(url, is_local_file):
    try:
        img = open_img(url, is_local_file)
        resized_img = resize_img(img, 40)
        resized_img_rgb = resized_img.convert("RGB")
        base64_str = "data:image/jpeg;base64," + image_to_base64(resized_img_rgb, "JPEG", 50).decode('utf-8')
        return base64_str
    except:
        return ""

str = sys.argv[1]
base64_str = url_to_base64(str, True)
print (base64_str)