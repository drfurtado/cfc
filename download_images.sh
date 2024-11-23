#!/bin/bash

# Create images directory if it doesn't exist
mkdir -p images

# Download hero image (soccer stadium)
curl -L -o images/hero-bg.jpg "https://images.pexels.com/photos/399187/pexels-photo-399187.jpeg?auto=compress&cs=tinysrgb&w=1920"

# Download parallax image (soccer team)
curl -L -o images/parallax-bg.jpg "https://images.pexels.com/photos/3148452/pexels-photo-3148452.jpeg?auto=compress&cs=tinysrgb&w=1920"

# Optimize images
magick images/hero-bg.jpg -strip -quality 85 -resize 1920x1080 images/hero-bg.jpg
magick images/parallax-bg.jpg -strip -quality 85 -resize 1920x1280 images/parallax-bg.jpg

echo "Images downloaded and optimized successfully!"
