---
title: "Outline & Delivery Notes"
---

{::options toc_levels="2..3" /}

<nav class="page-nav" markdown="1">

* Toc
{:toc}

</nav>
<section class="content-container" markdown="1">

_Jump to [stretch/extension concepts](#stretch-concepts)_

## Flexible delivery note

Instead of using the provided slide deck the entire time, you may instead switch to following this project outline at a designated point in the experience. It is your responsibiliy to ensure that **each item in a section's checklist** has been completed or addressed before moving on. 

Failure to complete a section's checklist may result in a confusing experience for learners as later sections may be dependent on skills or project progress from earlier sections. The expected output of each section is included at the beginning of each entry.

_Be sure to communicate to learners that additional information and reference material can be found in the slide deck._

## Sections

### Introduction, Context, and Setup

- Follow slides up until learners open trinket (~slide 21)

---

### Getting Started and Introducing Trinket

**Output**: Circle in middle of canvas; different background color.

- **Getting Started sketch URL**: [https://trinket.io/python/02e6c04961](https://trinket.io/python/02e6c04961)
- **Exercises 0 and 1:** Use the provided "Getting Started" Trinket to have learners make small modifications to the code, particularly moving elements around.
- Introduce learners to the structure of a Processing sketch.
- Have learners make use of the Processing reference.

#### Checklist

- Trinket:
  - [ ] Creating an account
  - [ ] User interface
  - [ ] Saving and running a program
- Processing:
  - [ ] Terminology: `sketch`, `canvas`, `primitive`
  - [ ] Required parts of a sketch and how they relate to each other: `def setup()`, `def draw()`, `run()`
  - [ ] Accessing and using the [Processing Python reference (https://py.processing.org/reference/)](https://py.processing.org/reference/)

---

### Processing Sketches and Python Syntax

- **Getting Started sketch URL:** [https://trinket.io/python/02e6c04961](https://trinket.io/python/02e6c04961) 
- Using the code from the Getting Started sketch, introduce basic/common Python syntax concepts such as `import`, calling functions, code flow, code blocks and comments `#`.

#### Checklist

- Processing:
  - [ ] Sketch code flow (reinforce `setup()` → `draw()` → `draw()` → ...)
- Python:
  - [ ] Calling functions by `name` followed by parentheses `()`
  - [ ] `from processing import *` 
  - [ ] `def` (only to the extent that we need to define `setup()` and `draw()` for Processing)
  - [ ] Code flows top to bottom
  - [ ] Code blocks are created with spacing/indentation
  - [ ] Comments `#`

---

### The Starter Project

**Output:** Emoji with one eye and mouth in place.

- **Starter project URL:** [https://trinket.io/python/6dcd711327](https://trinket.io/python/6dcd711327)
- **Exercise 2:** Analyse the starter project, specifically making note of the emoji elements that are already in place.
- Reposition existing elements.
- Review the `ellipse` primitive.

#### Checklist

- Processing:
  - [ ] XY-coordinate space
  - [ ] `ellipse()`

---

### Completing the Face

**Output:** Emoji with two eyes and a mouth

- **Exercise 3:** Adding another eye
- Write new eye code based on existing code.

#### Checklist
- No new concepts

---

### `;)` (winky face)

**Output:** Emoji with one regular eye and one winking eye.

- **Exercise 4:** `arc()` and comments `#`.
- Use the `radians()` Processing function to convert angles expressed in degrees to radians.

#### Checklist

- Processing:
  - [ ] `arc()` and `radians()`
- Python:
  - [ ] comments `#`

---

### `:P` and `if ... else`

**Output:** Interactive tongue-sticking-out (Ex. 5), winking (Ex. 6) sketch using `if keyPressed:`.

- **Exercise 5:** Use the statement `if keyPressed:` inside the `draw()` function to make your sketch reactive to key presses.
- **Exercise 6:** Expand the use of `if` with `else` to have code follow an alternate path depending on a condition, instead of just doing something extra (like in Ex. 5).

#### Checklist

- Processing:
  - [ ] `keyPressed` variable and `if keyPressed:`
- Python:
  - [ ] Conditional statements using `if`.
  - [ ] Conditional statements using `if` and `else`

---
  
### Processing and RGB Colors

**Output:** Complete emoji with colors that have been changed from their initial values.

- **Exercise 7:** Optionally use Adobe Color to find RGB values for new colors, then swap out colors for the background and emoji elements for the new colors.

#### Checklist:

- Processing:
  - [ ] Colors expressed as a mix of red, green, and blue.
  - [ ] Minimum (`0`) and maximum (`255`) values for color components.

---

## Stretch Concepts

### Processing

2. **The `key` Processing variable and `and` or nested `if`.** Processing's `key` variable contains the character of the key that was last pressed, e.g., when the "t" key is pressed, `key == "t"`.

   ```python
    if keyPressed: 
      # check if the "t" key is pressed
      if key == "t": 
        # stick out the tongue
        fill(198,75,80)
        arc(width/2, 200, 100, 150, 0, radians(180))
   ```

   This can get a little janky since you can only get the _last_ key that's been pressed, i.e., it won't detect multiple keys being pressed at the same time. You _can_ keep track of this yourself, e.g., by maintaining a list of keys that have been pressed and not released, but that's likely too advanced. It is included below for your reference.

   ```python
    keysPressed = [] # create an empty list

    def keyPressed():
      global keysPressed
      if key not in keysPressed:
        keysPressed.append(key)

    def keyReleased():
      global keysPressed
      if key in keysPressed:
        keysPressed.remove(key)
   ```

3. `def keyReleased()`. Fires when a key is released, once per keystroke. Similar to `def keyPressed()`, though that can repeat if a key is held down which might be undesireable.

   ```python
    def keyReleased():
    global winking # variable is True if the emoji should be winking and False otherwise
    if key == "w":
      winking = ~winking # toggle boolean using the not ~ operator 
   ```

4. Strokes (`stroke()`, `noStroke()`, `strokeWeight()`) and fills (`fill()`, `noFill()`).
1. **Managing styles with `pushStyle()` and `popStyle()`.** `pushStyle()` essentially creates a local style block or context and `popStyle()` exits, revert to whatever the previous style context was.

### Python 

1. **`import random`.** Use the `random` library and `random.randint()` to create, e.g., random colors. Can potentially pair this with key press detection.

   ```python
    import random

    def setup():
      size(300,300)
      background(35, 78, random.randint(128, 255))
   ```

2. **Lists `[]` and `random.choice()`.** Pick a value from a set of values.
3. **Variables.** Make code easier to maintain (color, position, size, etc.) or add motion; use flags to have states persist (will likely require use of `global`)
4. **Custom functions.** `def` new functions to make code more scalable, e.g., a new "eye" function that creates an eye at a particular location. Can further elaborate on this by adding parameters for eye color, size, etc.

   ```python
    def draw():
      # ... draw code ...#
      drawEye(125,150) # left eye
      drawEye(175,150) # right eye

    def drawEye(x, y):
      fill(255) # white, for the eye ball part
      circle(x, y, 50, 50)
      fill(0) # black, for the pupil
      circle(x, y, 25, 25)
   ```

</section>