# Proposal

## What will (likely) be the title of your project?

Sensorem: sensors that make harmony, melody, and rhythm.

## In just a sentence or two, summarize your project. (E.g., "My project is about creating a web-based synthesizer.")

My project is about creating a MIDI controller/musical instrument that allows the user to create and modify music using sensors and hardware.

## In a paragraph or more, detail your project. What will your software do? What features will it have? How will it be executed?

Description: Sensorem is an arduino-based instrument that works in two ways: as an analog controller for Ableton Live, and as a midi instrument (that generates harmony, melody, and beat based on arduino distance, temperture, and heart rate sensors). 

Software: Sensorem's code will be written in two languages: Machine Code (compiled from C/C++) and Max MSP. 

C: The challenge is to combine many existing and 'non-existing' scripts into a single script that allows full functionality. I intend to use Firmata (for Ableton connection) and serial to pass the data inputed from the sensors to Max MSP. 

Max MSP: Max will take the data via serial and compile it in a way that the output is both musical and within the range of MIDI values. It will consist of three systems: one for harmony, melody, and rhythm.  

Hardware: It is essential to create a box that is both ergonomic and complete in terms of the capacities that the machine offers. I will solder my connections into a project board and then build a wood/plastic box that has potentiometers, sensors, and maybe a switch.  


## If you are planning to combine EP-353's final project with another course's final project, with which other course? And which aspect(s) of your proposed project would relate to EP-353, and which aspect(s) would relate to the other course?



## In the world of software, most everything takes longer to implement than you expect. And so it's not uncommon to accomplish less in a fixed amount of time than you hope.

### In a sentence (or list of features), define a GOOD outcome for your final project. I.e., what WILL you accomplish no matter what?

A breadboard instrument that allows controlling Ableton Live and passing data to Max.

### In a sentence (or list of features), define a BETTER outcome for your final project. I.e., what do you THINK you can accomplish before the final project's deadline?

A breadboard instrument that allows controlling Ableton Live, passing data into Max and outputing sound based on the Max systems.

### In a sentence (or list of features), define a BEST outcome for your final project. I.e., what do you HOPE to accomplish before the final project's deadline?

A well-manufactured instrument that allows controlling Ableton Live, passing data into Max and outputing sound based on the Max systems.

## In a paragraph or more, outline your next steps. What new skills will you need to acquire? What topics will you need to research?

My next steps are the following:

1. Combining Scripts in Arduino IDE (libraries, functions, example scripts)
2. Testing sensors (running small arduino projects)
3. Passing data to Max via serial
4. Ergonomics/Design (maybe in Maya or Blender)

All of these steps require me to research what has already been done and where there is opportunity to try new things. [It is a project that incorporates many things that I like into one].

New Skills:

1. Soldering
2. Software Design (creating a single script that mixes many)
3. Making one program talk to another (Arduino to Max/Ableton)

Even though I have done all of this things I am not proficient in any. This is an opportunity to work in a project that is useful and highly educative. 

