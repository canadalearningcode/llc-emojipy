---
title: "Emoji Art with Python and Processing: Experience Outline"
---

_Jump to [stretch/extension concepts](#stretch-concepts)_

## Flexible delivery note

Instead of using the provided slide deck the entire time, you may instead switch to following this project outline at a designated point in the experience. It is your responsibiliy to ensure that **each item in a section's checklist** has been completed or addressed before moving on. 

Failure to complete a section's checklist may result in a confusing experience for learners as later sections may be dependent on skills or project progress from earlier sections. The expected output of each section is included at the beginning of each entry.

_Be sure to communicate to learners that additional information and reference material can be found in the slide deck._

<nav class="page-nav" markdown="1">

* Toc
{:toc}

</nav>

## Sections

### Introduction, Context, and Setup (0-21)

- Follow slides up until learners open trinket (~slide 21)

---

### Getting Started and Introducing Trinket (22-24)

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

### Completing the face

**Output:** Emoji with two eyes and a mouth

- **Exercise 3:** Adding another eye
- Write new eye code based on existing code.

#### Checklist
- No new concepts

---

### `;)`

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
  
### Processing and RGB colors

**Output:** Complete emoji with colors that have been changed from their initial values.

- **Exercise 7:** Optionally use Adobe Color to find RGB values for new colors, then swap out colors for the background and emoji elements for the new colors.

#### Checklist:

- Processing:
  - [ ] Colors expressed as a mix of red, green, and blue.
  - [ ] Minimum (`0`) and maximum (`255`) values for color components.

---

## Stretch concepts

### Processing
1. **Managing styles with `pushStyle()` and `popStyle()`.** `pushStyle()` essentially creates a local style block or context and `popStyle()` exits, revert to whatever the previous style context was.
2. **The `key` Processing variable and `and` or nested `if`.** Processing's `key` variable contains the character of the key that was last pressed, e.g., when the "t" key is pressed, `key == "t"`.
3. `def keyReleased()`. Fires when a key is released. Similar to `def keyPressed()`, though that can repeat if a key is held down which might be undesireable.
4. Strokes (`stroke()`, `noStroke()`, `strokeWeight()`) and fills (`fill()`, `noFill()`).

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