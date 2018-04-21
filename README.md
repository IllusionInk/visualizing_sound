# Visualizing Sound
The project began with the basic aim of emulating a sound visualizer. But explorations and study of native sound libraries in processing opened avenues for interesting analysis such as frequency detection, sound filtering and more. This project is currently a work in progress. 

> The final aim is to visualize a physical space based on the aural (sound) data avaliable in the given space. It would allow us to represent a space in a data-art oriented manner.
"Just as wine creepers growing over a space and define its apperance, how would a space appear in terms of the evoloving aural information in there ? "



### Method
---
 - The base pattern is a grid of squares generated using a nested for-loop.
 - Import the processing sound library and setup your variables for reading amplitude of the sound wave.
 - In order to use the sound decibel level at the required level, I scaled it up initially by factor of 1000.
 - Used this scaled up value to vary the size and brightness of the squares in the grids as per the sound input.

*I tried rotating the squares as well according to the sound input, but haven’t included it in the final code due to unnecessary overloading of the base pattern*.

### Further Notes
---
 > Some key things to consider here is the color model (HSB)- as it serves just right to link the sound amplitude to its visual equivalent  B (brightness), plus it allows one to further match frequency per se with the hue to mark distinct sound sources.

### Final Renders
---
##### Videos
[Sample Video]()

### Tools Used
---
- **Processing (processing.sound)** - Used the specific library to detect incoming live sound and derive its attributes (amplitude)  
- **Quicktime** - Used to capture a screen recording of the code in action.

### Further Goals
---
- [ ] Identify sound frequency using Fourier Transform.
- [ ] Work on color spectrum mapping.
- [ ] Refine the visualization pattern.


### Reference
--- 