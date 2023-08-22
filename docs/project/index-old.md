---
title: Starter Project
---

{% raw %}

<iframe src="https://trinket.io/embed/python/5753593d06" width="100%" height="356" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

{% endraw %}

## Mapping Shapes to Coordinates

1. Take a look at the code that is already here. There’s a Head, Eye (eyeball + pupil), and Mouth. We have a few parts of our emoji already existing - we just need to move them to the correct place. 
2. Move the Mouth: change the `x` and `y` values of the `arc`
3. Move the Eye: change the `x` and `y` values of the `ellipse`
4. Move the Pupil (on top of the white eyeball): change the `x` and `y` values of the `ellipse`
5. Don’t forget to save! (top, right corner)

```python
 # Mouth
fill(0,0,0) # black
arc(150, 200, 100, 50, 0, PI) # semi-circle

# Right Eye
fill(255,255,255) # white
ellipse(200, 150, 75, 75) # circle

# Right Eye Pupil
fill(0,0,0) # black
ellipse(200, 150, 25, 25) # circle
```

## Drawing More Shapes

We need to complete our emoji! We can either **(a) Copy the eye code and move it over**, or **(b) Draw a new shape using the Processing Python reference**: [py.processing.org/reference/](https://py.processing.org/reference/) 

### (A) To copy: 

1. Select the eye + pupil code and COPY (ctrl+c) then PASTE (ctrl+v) the code inside of `draw()`. 
2. Change the x values so there are two eyes, side-by-side.

### (B) To draw a new shape:

1. Find a new shape using the reference - let’s try using the `arc` to make a winking face
2. Type or paste the `arc()` code inside of `draw()`
3. Fill in the values of the shape. For the winking shape, we need to start at `PI` and end at `TWO_PI` (instead of starting at `0` an ending at `PI` like our mouth)
4. Don’t forget to save!

