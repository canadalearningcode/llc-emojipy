---
title: Getting Started
---

## Getting Started with Python, Trinket, and Processing

{% raw %}

<iframe src="https://trinket.io/embed/python/02e6c04961" width="100%" height="356" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

{% endraw %}

```python
from processing import *

def setup():
    # ... code here runs once ...

def draw():
    # ... code here loops constantly ...

run()
```


## Starter Project

{% raw %}

<iframe src="https://trinket.io/embed/python/5753593d06" width="100%" height="356" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>

{% endraw %}

### Mapping Shapes to Coordinates

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

### Drawing More Shapes