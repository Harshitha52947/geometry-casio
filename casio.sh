#!/bin/bash

# Function to calculate the area of a square
calculate_square_area() {
  echo "Enter the side length of the square:"
  read side
  area=$(echo "$side * $side" | bc)
  echo "The area of the square is: $area"
}

# Function to calculate the area of a rectangle
calculate_rectangle_area() {
  echo "Enter the length of the rectangle:"
  read length
  echo "Enter the width of the rectangle:"
  read width
  area=$(echo "$length * $width" | bc)
  echo "The area of the rectangle is: $area"
}

# Function to calculate the area of a circle
calculate_circle_area() {
  echo "Enter the radius of the circle:"
  read radius
  area=$(echo "3.14159 * $radius * $radius" | bc)
  echo "The area of the circle is: $area"
}

# Function to calculate the area of a triangle
calculate_triangle_area() {
  echo "Enter the base of the triangle:"
  read base
  echo "Enter the height of the triangle:"
  read height
  area=$(echo "$base * $height / 2" | bc)
  echo "The area of the triangle is: $area"
}

# Main script
echo "Welcome to the Area Determine Calculator!"
echo "Choose the shape you want to calculate the area for:"
echo "1. Square"
echo "2. Rectangle"
echo "3. Circle"
echo "4. Triangle"

read choice

case $choice in
  1)
    calculate_square_area
    ;;
  2)
    calculate_rectangle_area
    ;;
  3)
    calculate_circle_area
    ;;
  4)
    calculate_triangle_area
    ;;
  *)
    echo "Invalid choice. Please select 1, 2, 3, or 4."
    ;;
esac

