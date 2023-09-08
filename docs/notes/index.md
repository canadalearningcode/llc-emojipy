---
title: "Delivery Notes"
permalink: /notes/
---

{::options toc_levels="2..3" /}

{% assign description = site.pages | where: "permalink", "/description/" | first %}

<nav class="page-nav" markdown="1">

* Toc
{:toc}

</nav>
<section class="content-container" markdown="1">

## Delivery Notes

### Quick Links

* **Slides (Google Slides):** [https://bit.ly/llc-emojipy](https://bit.ly/llc-emojipy)
* **Notes (GitHub Pages):** [{{ page.url | absolute_url }}]({{ page.url | relative_url }})
* **Description (GitHub Pages):** [{{ description.url | absolute_url }}]({{ description.url | relative_url }})

#### Trinket
* **Trinket:** [https://trinket.io](https://trinket.io)
* **Demo/Finished Project (Trinket):** [https://bit.ly/clc-emojipy-demo](https://bit.ly/clc-emojipy-demo)
* **Warm-up Sketch (Trinket):** [https://bit.ly/clc-emojipy-warmup](https://bit.ly/clc-emojipy-warmup)
* **Starter Project/Sketch (Trinket):** [https://bit.ly/clc-emojipy-starter](https://bit.ly/clc-emojipy-starter)

### Flexible facilitation

Instead of using the provided slide deck the entire time, you may instead switch to following this project outline at a designated point in the experience. It is your responsibiliy to ensure that **each item in a section's checklist** has been completed or addressed before moving on. 

Failure to complete a section's checklist may result in a confusing experience for learners as later sections may be dependent on skills or project progress from earlier sections. The expected output of each section is included at the beginning of each entry.

_Be sure to communicate to learners that additional information and reference material can be found in the slide deck._

### Trinket's Processing vs Python mode for Processing

Trinket uses [Skulpt](https://skulpt.org/) for its Python environment:

1. Skulpt is a fully client-side, browser-based Python environment requiring no server-side support or plugins, written in JavaScript.
2. Trinket is _not_ running Python mode for Processing, so the [Processing Python reference (https://py.processing.org/reference/)](https://py.processing.org/reference/), while handy, won't be fully accurate.
3. The version of Processing that's being used by Trinket is (AFAIK) a partial port of the now-defunct JavaScript port of Processing, ProcessingJS. This means that Trinket's Processing doesn't have full coverage of the Processing API: it is a subset of ProcessingJS's coverage, which itself was a work-in-progress when development on it stopped.

### Known Issues and Oddities

1. If learners want to be able to save their work, they should create an account and log in before starting. Account creation doesn't required a verified email, so they can potentially create dummy accounts as long as they don't ever forget their password!
1. Trinket **requires** a `run()` call to start the Processing sketch. Do not forget this!
1. There is only one version of the `arc()` method, so you can't close the arc using the `mode` parameter to, for example, draw an outline around the semi-ellipse mouth of an emoji. As a workaround, wrap `arc()` in `beginShape()` and `endShape(CLOSE)` (`endShape(CHORD)` also seems to work) if you want the stroke on your `arc()` to be closed.
1. Using `save()` and `saveFrame()` to export images likely won't work. Take screenshots to save images of created work or (the code will be saved to Trinket).
1. While the starter project adds everything from the `processing` module into the global namespace, you might want to demonstrate what methods belong to the `processing` module by doing `import processing` and then using it as, e.g., `processing.background(300)`. This will behave as expected for most methods, though be aware that `setup()` and `draw()` aren't part of `processing`, but `processing.run()` is. 
1. `processing.pushStyle()` and `processing.popStyle()` can't be used (`processing.popStyle()` raises an error) unless added to the global namespace.

## Sections

_Jump to [stretch/extension concepts](#stretch)_

### Introduction, Context, and Setup

- Follow slides up until learners open trinket (~slide 21)

---

### Getting Started and Introducing Trinket

**Output**: Circle in middle of canvas; different background color.

- **Getting Started sketch URL**: [https://trinket.io/python/02e6c04961](https://trinket.io/python/02e6c04961)
- **Exercises 0 and 1:** Use the provided "Getting Started" Trinket to have learners make small modifications to the code, particularly moving elements around.
- Introduce learners to the structure of a Processing sketch.
- Have learners make use of the Processing reference.
- [Processing Python reference (https://py.processing.org/reference/)](https://py.processing.org/reference/). **Important note:** The version of Processing that Trinket uses is _not_ 1:1 with the Python mode of Processing described in the reference. Some things _will not work_ or may be different (e.g., `circle()` exists in Python mode, but not in the Trinket environment).

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

## Stretch Milestones
{: #stretch}

### Facilitation note(s)

1. **Concept groups.** Stretch concepts (i.e., additional concepts that can be covered) have been grouped into "milestones", since a single concept rarely makes sense by itself.
2. **Milestone order**. While each milestone is more-or-less independent of the rest, they have been ordered in terms of approximate importance as foundational Python concepts, keeping in mind that they need to be applied in the current experience context (Processing).
1. **Distinguishing between Python and Processing.** Before continuing onto the stretch milestones, reinforce the difference between Python and Processing. For the milestones below, be clear about what is a built-in or standard feature afforded by the Python language and what is a feature provided by Processing. For better or for worse, Processing exposes a lot of helper/utility functions that would normally be found in standard modules such as `math` and `random`.


### Milestone A: Variables, math operators, lists & `random`

* **Variables and math operators.** Make code easier to maintain (color, position, size, etc.) or add motion; use flags to have states persist (will likely require use of `global`). Assign values using `=`. Perform simple math using `-` and `+`. Example: use variables to be able to draw relative to a point (instead of relative to the corner/origin). Potentially combine with Processing's `mouseX` and `mouseY` variables to create something that follows the mouse cursor

   ```python
  def draw():
    x = 150
    y = 200

    # draw a head (ellipse) at the coordinates
    ellipse(x, y, 150, 150)

    # draw two eyeballs (ellipses) offset from the coordinates
    ellipse(x - 30, y - 20, 50, 50)
    ellipse(x + 30, y + 20, 50, 50)
    
   ```

* **`import random`.** Use the `random` module and `random.randint()` to create, e.g., random colors. Can potentially pair this with key press detection. Note: without importing Python's `random` module, Processing exposes a `random(a,b)` method that functions like `random.uniform(a,b)` (i.e., produces a float between `a` and `b`). If you _don't_ end up importing the `random` module, you can mimic the functionality of `random.randint(a,b)` with `round(random(a,b))`.

   ```python
  import random

  def setup():
    size(300,300)
    background(35, 78, random.randint(128, 255))
   ```

* **Lists `[]` and `random.choice()`.** Pick a value from a set of values.


### Milestone B: Custom functions

`def` new functions to make code more scalable, e.g., a new "eye" function that creates an eye at a particular location. Can further elaborate on this by adding parameters for eye color, size, etc.

```python
def draw():
  # ... draw code ...#
  drawEye(125,150) # left eye
  drawEye(175,150) # right eye

def circle(x, y, r):
  ellipse(x, y, r, r)

def drawEye(x, y):
  fill(255) # white, for the eye ball part
  circle(x, y, 50)
  fill(0) # black, for the pupil
  circle(x, y, 25)
```

### Milestone C: Conditional statements, operators, and Processing variables

**The `key` Processing variable and `and` or nested `if`.** Processing's `key` variable contains the character of the key that was last pressed, e.g., when the "t" key is pressed, `key == "t"`.

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

`def keyReleased()` fires when a key is released, once per keystroke. Similar to `def keyPressed()`, though that can repeat if a key is held down which might be undesireable.

```python
def keyReleased():
  global winking # variable is True if the emoji should be winking and False otherwise
  if key == "w":
    winking = ~winking # toggle boolean using the not ~ operator 
```

### Milestone D: Processing style contexts

1. `pushStyle()` and `popStyle()`: `pushStyle()` essentially creates a local style block or context and `popStyle()` exits, revert to whatever the previous style context was. (Prompt: Where/why might this be useful?)
2. Use `pushStyle()` and `popStyle()` inside a function.
3. Closing an `arc()` using `beginShape()` and `endShape(CLOSE)` (or `endShape(CHORD)`).
4. Strokes (`stroke()`, `noStroke()`, `strokeWeight()`) and fills (`fill()`, `noFill()`).



</section>