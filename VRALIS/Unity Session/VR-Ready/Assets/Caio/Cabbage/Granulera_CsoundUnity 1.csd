<Cabbage> bounds(0, 0, 0, 0)
//CsoundUnity
button bounds(24, 784, 80, 40) channel("OnOff") text("Off", "On")
rslider bounds(246, 766, 60, 60) channel("MidiNote") range(0, 127, 60, 1, 1) text("MidiNote")

//HEADER AND UTILITIES
form caption("Granulera by Caio M. Jiacomini") size(1180,900), guiMode("queue") colour(0, 0, 0), pluginId("cjb2")
label bounds(10, 8, 216, 28) fontColour(188, 151, 49, 255) text("G R A N U L E R A") channel("label3")
label bounds(8, 38, 141, 15) text("by Caio M. Jiacomini") colour(255, 255, 255, 0) fontColour(255, 255, 255, 255) channel("label4")

;combobox bounds(400, 12, 400, 32) channelType("string") populate("*.snaps") fontColour(188, 151, 49, 255) channel("combo10")  value("1")
;filebutton bounds(328, 12, 64, 32) text("Save", "Save") mode("named preset") channel("filebutton11")
;filebutton bounds(806, 12, 64, 32) text("Delete", "Delete") mode("remove preset") channel("filebutton12")

label bounds(12, 594, 116, 14) channel("label10114") text("Pitch Bend Range") fontColour(255, 255, 255, 255) 
nslider bounds(160, 588, 55, 26) channel("PitchBend") range(1, 24, 2, 1, 1) colour(0, 0, 0, 255) textColour(188, 151, 49, 255) trackerColour(0, 0, 0, 0) fontColour(188, 151, 49, 255)
button bounds(160, 624, 55, 32) text("PANIC", "PANIC") channel("Panic") colour:1(255, 0, 0, 255) outlineThickness(2) outlineColour(255, 0, 0, 255)
button bounds(10, 624, 118, 32) channel("VelocityButton") text("Velocity Disabled", "Velocity Enabled") colour:1(188, 151, 49, 255) outlineThickness(2) outlineColour(188, 151, 49, 255)

//OSCILLATORS
image bounds(0, 100, 237, 465) channel("image10115") colour(0, 0, 0, 255)
{
label bounds(34, 0, 140, 18) text("OSCILLATOR 1") fontColour(255, 255, 255, 255) channel("label18")
label bounds(15, 30, 65, 14) text("Waveform") fontColour(255, 255, 255, 255) channel("label20")
combobox bounds(114, 28, 80, 20) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse") fontColour(188, 151, 49, 255) channel("WaveformSelection1")
hslider bounds(12, 48, 180, 29) range(0, 1, 1, 1, 0.01) text("Volume") channel("Oscillator1Volume") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(12, 78, 180, 29) range(-24, 24, 0, 1, 1) text("Semitone") channel("Oscillator1Semitone") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(12, 108, 180, 29) range(-100, 100, 0, 1, 1) text("Cents") channel("Oscillator1Cents") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

label bounds(34, 165, 140, 18) text("OSCILLATOR 2") channel("label29") fontColour(255, 255, 255, 255)
label bounds(15, 195, 65, 14) fontColour(255, 255, 255, 255) text("Waveform") channel("label24")
combobox bounds(114, 193, 80, 20) channel("WaveformSelection2") fontColour(188, 151, 49, 255) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse") 
hslider bounds(12, 213, 180, 29) channel("Oscillator2Volume") range(0, 1, 0, 1, 0.01) text("Volume") textColour(255, 255, 255, 255) trackerColour(188, 151, 49, 255)
hslider bounds(12, 243, 180, 29) range(-24, 24, 0, 1, 1) text("Semitone") channel("Oscillator2Semitone") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(12, 273, 180, 29) range(-100, 100, 0, 1, 1) text("Cents") channel("Oscillator2Cents") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

label bounds(34, 330, 140, 18) fontColour(255, 255, 255, 255) text("OSCILLATOR 3") channel("label30")
label bounds(15, 360, 65, 14) fontColour(255, 255, 255, 255) text("Waveform") channel("label31")
combobox bounds(114, 358, 80, 20) fontColour(188, 151, 49, 255) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse") channel("WaveformSelection3")
hslider bounds(12, 378, 180, 29) range(0, 1, 0, 1, 0.01) text("Volume") channel("Oscillator3Volume") textColour(255, 255, 255, 255) trackerColour(188, 151, 49, 255)
hslider bounds(12, 408, 180, 29) range(-24, 24, 0, 1, 1) text("Semitone") channel("Oscillator3Semitone") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(12, 438, 180, 29) range(-100, 100, 0, 1, 1) text("Cents") channel("Oscillator3Cents") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
}

//GRAINS
label bounds(368, 75, 99, 18) fontColour(255, 255, 255, 255) text("G R A I N S")
label bounds(305, 238, 230, 14) fontColour(255, 255, 255, 255) text("Randomization")
hslider bounds(244, 200, 332, 29) range(0, 0.5, 0.5, 1, 0.01) text("Grain Spread") channel("GrainSpread") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
//Windowing
label bounds(315, 109, 97, 14) text("Windowing") fontColour(255, 255, 255, 255)
combobox bounds(420, 107, 93, 20) text("Sync", "Hanning", "Blackman-Harris", "Gaussian", "Kaiser", "Rectangle", "") fontColour(188, 151, 49, 255) channel("WindowingSelection") value(2)
//Freq
rslider bounds(462, 264, 80, 56) range(1, 1000, 1, 0.5, 1) channel("FrequencyVariationRange") text("Frequency Range") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(462, 338, 80, 56) range(0, 10, 0, 1, 0.1) channel("FrequencyVariationRate") text("Frequency Rate") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(422, 133, 80, 56) range(0, 1000, 0, 0.3, 0.01) text("Pitch Variation") channel("PitchVariation") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
//Duration
rslider bounds(254, 132, 80, 56) range(0.01, 1, 0.1, 0.5, 0.01) channel("GrainDuration") text("Grain Duration") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(294, 264, 80, 56) range(0.01, 1, 0.01, 0.5, 0.01) channel("DurationVariationRange") text("Duration Range") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(294, 338, 80, 56) range(0.01, 10, 0.01, 1, 0.1) channel("DurationVariationRate") text("Duration Rate") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
//Density
rslider bounds(338, 133, 80, 56) range(0.5, 100, 14, 0.5, 0.1) channel("GrainDensity") text("Grain Density") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(378, 264, 80, 56) range(0.01, 100, 0.01, 0.5, 0.1) channel("DensityVariationRange") text("Density Range") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(378, 338, 80, 56) range(0.01, 10, 0.01, 1, 0.1) channel("DensityVariationRate") text("Density Rate") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
//Phase
rslider bounds(506, 133, 80, 56) range(0, 1, 1, 1, 0.05) text("Phase Variation") channel("PhaseVariation") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

//FILTER
label bounds(366, 430, 99, 18) fontColour(255, 255, 255, 255) text("F I L T E R")
label bounds(373, 462, 89, 14) fontColour(255, 255, 255, 255) text("Filter Type")
button bounds(252, 456, 116, 26)  channel("FilterNoteTrack") text("Key Tracking Off", "Key Tracking On")    colour:1(188, 151, 49, 255) value(1) outlineThickness(2) outlineColour(188, 151, 49, 255)
combobox bounds(472, 460, 87, 20) text("Low Pass", "High Pass", "Band Pass") fontColour(188, 151, 49, 255) channel("FilterSelection") value(1)
rslider bounds(294, 491, 80, 56) range(0.001, 1, 1, 0.5, 0.001) text("Frequency") channel("FilterFreq") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(378, 491, 80, 56) range(0.001, 1, 0.001, 0.5, 0.001) text("Start/End Freq") channel("FilterRange") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

rslider bounds(462, 491, 80, 56) range(1, 50, 1, 0.5, 0.1) text("Resonance") channel("FilterReson") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255) 
rslider bounds(462, 491, 80, 56) range(1, 5000, 1000, 0.5, 0.1) text("Bandwidth") channel("FilterBW") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255) visible(0)

label bounds(340, 570, 160, 14) fontColour(255, 255, 255, 255) text("Filter Envelope")
rslider bounds(244, 594, 80, 56) range(0.01, 10.01, 0, 0.5, 0.01) text("Attack") channel("FilterAttack") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(328, 594, 80, 56) range(0.01, 10.01, 0.01, 0.5, 0.01) text("Decay") channel("FilterDecay") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(412, 594, 80, 56) range(0.01, 1.01, 1, 0.5, 0.001) text("Sustain") channel("FilterSustain") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(494, 594, 80, 56) range(0.01, 10.01, 0.1, 0.5, 0.01) text("Release") channel("FilterRelease") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

//LFO
label bounds(744, 230, 70, 18) fontColour(255, 255, 255, 255) text("L F O")

label bounds(636, 270, 110, 14) fontColour(255, 255, 255, 255) text("Grain Duration")
rslider bounds(694, 294, 80, 56) range(0, 0.7, 0, 0.5, 0.01) text("Depth") channel("LfoDurRange") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(614, 294, 80, 56) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoDurFreq") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

label bounds(818, 270, 111, 14) fontColour(255, 255, 255, 255) text("Grain Density")
rslider bounds(872, 294, 80, 56) range(0, 100, 0, 0.5, 0.01) text("Depth") channel("LfoDensityRange") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(792, 294, 80, 56) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoDensityFreq") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

label bounds(630, 370, 131, 14) fontColour(255, 255, 255, 255) text("Filter Frequency")
rslider bounds(694, 394, 80, 56) range(0, 0.5, 0, 1, 0.01) text("Depth") channel("LfoFilterRange") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(614, 394, 80, 56) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoFilterFreq") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

label bounds(828, 370, 91, 14) fontColour(255, 255, 255, 255) text("Amplitude")
rslider bounds(872, 394, 80, 56) range(0, 0.5, 0, 1, 0.01) text("Depth") channel("LfoAmpRange") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(792, 394, 80, 56) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoAmpFreq") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

label bounds(632, 470, 133, 14) fontColour(255, 255, 255, 255) text("Panning")
rslider bounds(694, 494, 80, 56) range(0, 0.5, 0, 1, 0.01) text("Depth") channel("LfoPanRange") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(614, 494, 80, 56) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoPanFreq") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

label bounds(814, 470, 115, 14) fontColour(255, 255, 255, 255) text("Tuning")
rslider bounds(872, 494, 80, 56) range(0, 1200, 0, 0.35, 0.01) text("Depth") channel("LfoTuningRange") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(792, 494, 80, 56) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoTuningFreq") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

label bounds(620, 570, 151, 14) fontColour(255, 255, 255, 255) text("Modulation Tuning")
rslider bounds(694, 594, 80, 56) range(0, 5000, 0, 0.5, 1) text("Depth") channel("LfoModFreqRange") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(614, 594, 80, 56) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoModFreqFreq") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

label bounds(804, 570, 140, 14) fontColour(255, 255, 255, 255) text("Modulation Amount")
rslider bounds(872, 594, 80, 56) range(0, 0.5, 0, 1, 0.01) text("Depth") channel("LfoModAmpRange") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(792, 594, 80, 56) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoModAmpFreq") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

//MODULATION
label bounds(696, 75, 203, 18) fontColour(255, 255, 255, 255) text("M O D U L A T I O N")
label bounds(654, 109, 83, 15) fontColour(255, 255, 255, 255) text("Ring")
rslider bounds(614, 132, 80, 56) range(-3600, 3600, 0, 1, 10) text("Tuning") channel("RMFreq") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(694, 132, 80, 56) range(0, 1, 0, 1, 0.01) text("Amount") channel("RMAmp") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
label bounds(832, 108, 83, 15) fontColour(255, 255, 255, 255) text("Frequency") channel("label132")
rslider bounds(792, 132, 80, 56) range(0, 10000, 0, 0.5, 1) text("Tuning") channel("FMFreq") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
rslider bounds(872, 132, 80, 56) range(0, 1, 0, 0.5, 0.01) text("Amount") channel("FMAmp") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

//GLOBALS
label bounds(1024, 20, 103, 18) fontColour(255, 255, 255, 255) text("GLOBAL")
hslider bounds(976, 42, 180, 29) range(0, 2, 1, 1, 0.01) text("Volume") channel("GlobalVolume") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255) fontColour(255, 255, 255, 255)
hslider bounds(976, 72, 180, 29) range(0, 1, 0.5, 1, 0.01) text("Stereo Pan") channel("GlobalPan") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(976, 102, 180, 29) range(-2400, 2400, 0, 1, 0.01) channel("GlobalTuning") text("Tuning") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

label bounds(976, 158, 89, 18) fontColour(255, 255, 255, 255) text("ENVELOPE") channel("label144")
button bounds(1080, 152, 81, 28) channel("AmpEnvelopeToggle") text("Linear", "Exponential") outlineThickness(2) outlineColour(188, 151, 49, 255) 

hslider bounds(976, 183, 180, 29) range(0.01, 10, 0.1, 0.5, 0.01) text("Attack") channel("AmpAttack") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(976, 213, 180, 29) range(0.01, 10, 0.1, 0.5, 0.01) text("Decay") channel("AmpDecay") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(976, 243, 180, 29) range(0.0001, 1, 1, 1, 0.01) text("Sustain") channel("AmpSustain") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(976, 273, 180, 29) range(0.01, 10, 0.4, 1, 0.01) text("Release") channel("AmpRelease") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

//EFFECTS
label bounds(976, 330, 67, 18) fontColour(255, 255, 255, 255) text("REVERB")
button bounds(1080, 326, 81, 25)  channel("ReverbBypass") text("Off", "On")    colour:1(188, 151, 49, 255) value(1) outlineThickness(2) outlineColour(188, 151, 49, 255)
hslider bounds(976, 354, 180, 29) range(0, 1, 1, 1, 0.01) channel("ReverbSend") text("Send") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(976, 384, 180, 29) range(0, 1, 0, 1, 0.01) channel("ReverbMix") text("Mix") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(976, 414, 180, 29) range(0, 0.9, 0.4, 1, 0.01) channel("ReverbSize") text("Size") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

label bounds(976, 470, 52, 18) fontColour(255, 255, 255, 255) text("DELAY")
button bounds(1080, 466, 81, 25)  channel("DelayBypass") text("Off", "On")    colour:1(188, 151, 49, 255) value(0) outlineThickness(2) outlineColour(188, 151, 49, 255)
hslider bounds(976, 495, 180, 29) range(0, 1, 0, 1, 0.01) channel("DelaySend") text("Send") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(976, 525, 180, 29) range(0, 1, 1, 1, 0.01) channel("DelayMix") text("Mix") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(976, 555, 180, 29) range(0.05, 10, 0, 0.4, 0.01) channel("DelayTimeLeft") text("Time Left") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(976, 585, 180, 29) range(0.05, 10, 0, 0.4, 0.01) channel("DelayTimeRight") text("Time Right") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)
hslider bounds(976, 615, 180, 29) range(0, 1, 0, 1, 0.01) channel("DelayFeedback") text("Feedback") trackerColour(188, 151, 49, 255) textColour(255, 255, 255, 255)

//GRAPHIC LINES
//Vertical
image bounds(237, 0, 2, 724) channel("image10000") colour(188, 151, 49, 255)
image bounds(600, 55, 2, 669) channel("image10000") colour(188, 151, 49, 255)
image bounds(960, 0, 2, 724) channel("image10000") colour(188, 151, 49, 255)
//Horizontal
image bounds(237, 55, 725, 2) channel("image10000") colour(188, 151, 49, 255)
image bounds(237, 410, 363, 2) channel("image10000") colour(188, 151, 49, 255)
image bounds(600, 210, 360, 2) channel("image10000") colour(188, 151, 49, 255)

</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -dm0
</CsOptions>
<CsInstruments>

ksmps = 32
nchnls = 2
0dbfs = 1

seed 0

//Waveforms
giSine ftgen 1, 0, 8192, 10, 1
giTriangle ftgen 2,0, 8192, 9, 1, 1, 0, 3, .333, 180, 5, .2, 0, 7, .143, 180, 9, .111, 0
giSaw ftgen 3, 0, 8192, 10, 1, .5, .333, .25, .2, .166, .143, .125, .111, .1, .0909, .0833, .077
giSquare ftgen 4, 0, 8192, 10, 1, 0, .333, 0, .2, 0, .143, 0, .111, 0, .0909, 0, .077, 0, .0666, 0, .0588
giPulse ftgen 5, 0, 8192, 10, 1, 1, 1, 1, 0.7, 0.5, 0.3, 0.1

//Windowing
giWfn9 ftgen 11, 0, 16384, 20, 9 //Sync window
giWfn2 ftgen 12, 0, 16384, 20, 2 //Hanning window
giWfn5 ftgen 13, 0, 16384, 20, 5 //Blackman-Harris window
giWfn5 ftgen 14, 0, 16384, 20, 6, 1, 2 //Gaussian window
giWfn5 ftgen 15, 0, 16384, 20, 7, 1, 3.5 //Kaiser window
giWfn8 ftgen 16, 0, 16384, 20, 8 //Rectangle window

opcode linearRandom_Low, i, iii
    iMin, iMax, iMaxCount xin
    
    iCount = 0
    iRandom = iMax
    
    until iCount == iMaxCount do
        iUniRandom random iMin,iMax
        iRandom = iUniRandom < iRandom ? iUniRandom : iRandom
        iCount += 1
    enduntil
        xout iRandom
endop

opcode linearRandom_High, i, iii
    iMin, iMax, iMaxCount xin
    
    iCount = 0
    iRandom = iMin
    
    until iCount == iMaxCount do
        iUniRandom random iMin,iMax
        iRandom = iUniRandom > iRandom ? iUniRandom : iRandom
        iCount += .5
    enduntil
        xout iRandom
endop


instr OnOff
    kOnOff      chnget "OnOff" 
    kIsOnTrig   changed kOnOff
    
    kFreqMidi   chnget "MidiNote"
    kFreq       cpsmidinn kFreqMidi
    
    //Turn insturment on indefinitely on triggeer and turn it off when trigger is hit again
    if kOnOff == 1 then
        if kIsOnTrig == 1 then
            event "i", 100, 0, 60*60*24*7, kFreq
        endif
    elseif kOnOff == 0 then
        turnoff2 100, 0, 1
    endif
    
    ;printk 0.3, kOnOff
            
endin

instr 100
    //Grain Duration
        kDur            chnget "GrainDuration"
        kDurVarRange    chnget "DurationVariationRange"
        kDurVarRate     chnget "DurationVariationRate"
        
        kLfoDurRange    chnget "LfoDurRange"
        kLfoDurFreq     chnget "LfoDurFreq"
    
        kDurVar     jitter  kDurVarRange, .2 * kDurVarRate, .5 * kDurVarRate
        kLfoDur     lfo     kLfoDurRange, kLfoDurFreq
        kDurTotal   limit   kDur + kDurVar + kLfoDur , 0.01, 1
    
    //Grain Density
        kDensity            chnget "GrainDensity"
        kDensityVarRange    chnget "DensityVariationRange"
        kDensityVarRate     chnget "DensityVariationRate"
        
        kLfoDensityRange    chnget "LfoDensityRange"
        kLfoDensityFreq     chnget "LfoDensityFreq"
    
        kLfoDensity     lfo     kLfoDensityRange, kLfoDensityFreq 
        kDensityVar     jitter  kDensityVarRange, .2 * kDensityVarRate, .5 * kDensityVarRate
        kDensityTotal   limit   kDensity + kDensityVar + kLfoDensity, 0.1, 80
        
        kTrig metro kDensityTotal
     
    
    //Phase Variation
        kPhaseVar chnget "PhaseVariation"
        kPhaseVar rand kPhaseVar

    //Pitch
        iFreqMIDI = p4
        iPitchBendValue  chnget "PitchBend"                
        kPitchVar        chnget "PitchVariation"
        
        kFreqVarRange   chnget "FrequencyVariationRange"
        kFreqVarRate    chnget "FrequencyVariationRate"
        kGlobalTuning   chnget "GlobalTuning"
    
        kLfoTuningRange chnget "LfoTuningRange"
        kLfoTuningFreq  chnget "LfoTuningFreq"
        
        kLfoTuning      lfo kLfoTuningRange, kLfoTuningFreq       
                
        kPitchVar       rand kPitchVar
        kGlobalTuning = cent(kGlobalTuning)
    
        kFreqVar jitter kFreqVarRange, .2 * kFreqVarRate, .5 * kFreqVarRate
        gkFreqTotal = ((iFreqMIDI + kFreqVar) * kGlobalTuning)
    
    //Spatialization
        kGrainSpread chnget "GrainSpread"
        kRandomSpread  random 0, kGrainSpread
    
    //Filter
        iFilterFreq     chnget "FilterFreq"
        iFilterRange    chnget "FilterRange"
        iFilterAttack   chnget "FilterAttack"
        iFilterDecay    chnget "FilterDecay"
        iFilterSustain  chnget "FilterSustain"
        iFilterRelease  chnget "FilterRelease"
        giFilterType    = chnget:i("FilterSelection") - 1
 
        gkFilterFreq    chnget "FilterFreq"
        gkFilterReson   chnget "FilterReson"
        ;gkFilterReson   port gkFilterReson, 0.02
        gkFilterBW      = 1 ;chnget "FilterBW"
        ;gkFilterBW      port gkFilterBW, 0.02

        gkFilterNoteTracking  = 1 ;chnget "FilterNoteTrack"
            
            //Filter Envelope:    
            if iFilterAttack > 0.01 then
                kFilterEnv  expsegr iFilterRange, iFilterAttack, iFilterFreq, iFilterDecay, iFilterSustain * iFilterFreq, iFilterRelease, iFilterRange
            else
                kFilterEnv  expsegr iFilterFreq, iFilterDecay, iFilterSustain * iFilterFreq, iFilterRelease, iFilterRange
            endif
                
            //Allows filter frequency to be modulated in real time
            kcc1Trig changed2 gkFilterFreq
            kcc1Trig2 init 0
        
            if kcc1Trig == 1 then
                kcc1Trig2 = 1
            endif

            if release() == 0 then
                if kcc1Trig2 == 1 then
                    kFilterFreqSum = gkFilterFreq
                else
                    kFilterFreqSum = kFilterEnv
                endif  
            else
                kFilterFreqSum = kFilterEnv
            endif
    
            //Ports envelope         
            ;kFilterFreqSum port kFilterFreqSum, 0.1
            
            //Filter LFO
            gkLfoFilterFreq  = 0 ;chnget "LfoFilterFreq"
            kLfoFilterRange = 0 ;chnget "LfoFilterRange"

            kLfoFilter lfo kLfoFilterRange, gkLfoFilterFreq
            kLfoFilter += 0.5

    //Velocity
        ;iVelocityToggle chnget "VelocityButton"
        ;iAmpMIDI        ampmidi 1
     
    //Amp envelope
        iAttack         chnget "AmpAttack"
        iDecay          chnget "AmpDecay"
        iSustain        chnget "AmpSustain"
        iRelease        chnget "AmpRelease"
        iAmpEnvToggle   chnget "AmpEnvelopeToggle"
        
        
        if iAmpEnvToggle == 1 then
            kAmpEnv     mxadsr iAttack, iDecay, iSustain, iRelease
        else
            kAmpEnv     madsr iAttack, iDecay, iSustain, iRelease
        endif
        
        ;if iVelocityToggle == 1 then
        ;    kAmpEnv *= iAmpMIDI
        ;endif   
        
        kLfoAmpRange chnget "LfoAmpRange"
        kLfoAmpFreq  chnget "LfoAmpFreq"    
        kAmpLfo lfo kLfoAmpRange, kLfoAmpFreq
        kAmpLfo += 0.5
        
    //Modulation LFO
        kLfoModAmpRange chnget "LfoModAmpRange"
        kLfoModAmpFreq  chnget "LfoModAmpFreq"
    
        kLfoModFreqRange chnget "LfoModFreqRange"
        kLfoModFreqFreq chnget "LfoModFreqFreq"
        
        kModAmpLfo lfo kLfoModAmpRange, kLfoModAmpFreq
        kModAmpLfo += 0.5
        kModFreqLfo lfo kLfoModFreqRange, kLfoModFreqFreq
        
    ///Pan LFO
        kLfoPanRange chnget "LfoPanRange"
        gkLfoPanFreq chnget "LfoPanFreq" 
        kPanLfo lfo kLfoPanRange, gkLfoPanFreq
                
                
    //Granulation 
        schedkwhen kTrig, 0, 0, "Synthesis", 0, kDurTotal, gkFreqTotal + kPitchVar, abs(kPhaseVar), kRandomSpread, kAmpEnv, kLfoTuning, kFilterFreqSum, kLfoFilter, kAmpLfo, kModAmpLfo, kModFreqLfo, kPanLfo 
;                                                  p3            p4                      p5              p6          p7          p8          p9          p10        p11        p12          p13         p14   
    
endin
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
instr Synthesis
    //Oscillator1
        iOsc1Vol    chnget "Oscillator1Volume"
        iOsc1Semi   chnget "Oscillator1Semitone"
        iOsc1Cent   chnget "Oscillator1Cents"
        iFn1        chnget "WaveformSelection1"
    
        iOsc1Semi = semitone(iOsc1Semi)
        iOsc1Cent = cent(iOsc1Cent)
    
    //Oscillator2
        iOsc2Vol    chnget "Oscillator2Volume"
        iOsc2Semi   chnget "Oscillator2Semitone"
        iOsc2Cent   chnget "Oscillator2Cents"  
        iFn2        chnget "WaveformSelection2"
   
        iOsc2Semi = semitone(iOsc2Semi)
        iOsc2Cent = cent(iOsc2Cent)
    
    //Oscillator3
        iOsc3Vol    chnget "Oscillator3Volume"
        iOsc3Semi   chnget "Oscillator3Semitone"
        iOsc3Cent   chnget "Oscillator3Cents"
        iFn3        chnget "WaveformSelection3"
   
        iOsc3Semi = semitone(iOsc3Semi)
        iOsc3Cent = cent(iOsc3Cent)
    
    //Windowing      
        iWfn = 11 ;chnget:i("WindowingSelection") + 10
        
        kWindowIndex line 0, p3, 1
        kWindowEnv table kWindowIndex, iWfn, 1 
        aWindowEnv interp kWindowEnv
      
    //Globals
        iGlobalPan  chnget "GlobalPan"
        iGlobalVol  chnget "GlobalVolume"
        
    //Modulation
        iRMFreq chnget "RMFreq"
        iRMAmp  chnget "RMAmp"
        iFMFreq chnget "FMFreq"
        iFMAmp  chnget "FMAmp"
        
    //FREQUENCY MODULATION
        iModAmpLfo = p12
        iModFreqLfo = p13
        iFMAmpInterpol ntrpol 0, 20000, iFMAmp
        aFMOsc poscil iFMAmpInterpol * iModAmpLfo, iFMFreq + abs(iModFreqLfo * 2)

    //OSCILLATORS   
        aGrain1 poscil aWindowEnv * iOsc1Vol, (p4 * iOsc1Semi * iOsc1Cent) + p8 + aFMOsc, iFn1, p5
        aGrain2 poscil aWindowEnv * iOsc2Vol, (p4 * iOsc2Semi * iOsc2Cent) + p8 + aFMOsc, iFn2, p5
        aGrain3 poscil aWindowEnv * iOsc3Vol, (p4 * iOsc3Semi * iOsc3Cent) + p8 + aFMOsc, iFn3, p5
        
        iAmpEnv = p7
        iAmpLfo = p11
        aGrainSum = (aGrain1 + aGrain2 + aGrain3) * iAmpEnv * iAmpLfo

    //RING MODULATION
        iRMFreq = cent(iRMFreq)
        aRMOsc poscil 1, (iRMFreq * gkFreqTotal) + iModFreqLfo
    
        aRingModSig ntrpol aGrainSum, aRMOsc * aGrainSum, iRMAmp * iModAmpLfo * 2

    //FILTERING:   
        iFilterEnvTotal ntrpol 20, 20000, p9

        //Frequency offset        
        if gkFilterNoteTracking == 0 then
            kFilterFreqTotal =  iFilterEnvTotal
            if gkLfoFilterFreq > 0 then
                kFilterFreqTotal *= p10
            endif
        else
            kFilterFreqTotal =  iFilterEnvTotal + gkFreqTotal ;kFreqTotal = cpsmidi + global cent tuning + frequency randomization         
            if gkLfoFilterFreq > 0 then
                kFilterFreqTotal *= p10
            endif
        endif
        
        kFilterFreqTotal limit kFilterFreqTotal, 20, 20000

        //Filter type selection
        if giFilterType == 2 then
            aSigFilter butterbp aRingModSig, kFilterFreqTotal, gkFilterBW
        else
            gkFilterReson limit gkFilterReson, 1, 50
            aSigFilter bqrez aRingModSig, kFilterFreqTotal, gkFilterReson, giFilterType  
        endif

    //Random Pan Position
        iRandomLow linearRandom_Low -p6, 0, 50
        iRandomHigh linearRandom_High 0, p6, 50
        iRandomArray[] fillarray iRandomLow, iRandomHigh
        
        iRandomIndexSelector random 0, 1
        iRandomIndex = iRandomIndexSelector < 0.5 ? 0 : 1
        aGrainOutL, aGrainOutR pan2 aSigFilter, .5 + iRandomArray[iRandomIndex]
        
    //Global pan
        if gkLfoPanFreq > 0 then
            kPan = iGlobalPan + p14
        else
            kPan = iGlobalPan
        endif
        
       aGrainOutL *= 1 - kPan
       aGrainOutR *= kPan
        
    //Output
        chnmix aGrainOutL * iGlobalVol, "SigL"
        chnmix aGrainOutR * iGlobalVol, "SigR"
endin
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
instr Reverb
    //CHNGET
        aSigL chnget "SigL"
        aSigR chnget "SigR"
        kReverbSize chnget "ReverbSize"
        kReverbMix chnget "ReverbMix"
        kReverbSend chnget "ReverbSend"
        gkReverbBypass chnget "ReverbBypass"

    //PORTK
        kReverbMix port kReverbMix, 0.02
        kReverbSend portk kReverbSend, 0.02
        kReverbSize portk kReverbSize, 0.02
    
     if kReverbSend > 0 then    
        //REVERB
        aVerbL, aVerbR reverbsc aSigL * kReverbSend, aSigR * kReverbSend, kReverbSize, 6000  
    
        //MIX
        if gkReverbBypass == 1 then
            aVerbMixL ntrpol aSigL, aVerbL, kReverbMix
            aVerbMixR ntrpol aSigR, aVerbR, kReverbMix
            outs aVerbMixL, aVerbMixR
        endif
     endif

endin
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
instr Delay
    //CHNGET
        aSigL chnget "SigL"
        aSigR chnget "SigR"
        kDelaySend chnget "DelaySend"
        kDelayMix chnget "DelayMix"
        kDelayTimeLeft chnget "DelayTimeLeft"
        kDelayTimeRight chnget "DelayTimeRight"
        kDelayFeedback chnget "DelayFeedback"
        kDelayBypass chnget "DelayBypass"

    //PORTK
        kDelayMix port kDelayMix, 0.02
        kDelaySend portk kDelaySend, 0.02
        kDelayTimeLeft portk kDelayTimeLeft, 0.02
        kDelayTimeRight portk kDelayTimeRight, 0.02
        kDelayFeedBack portk kDelayFeedback, 0.02

     if kDelaySend > 0 then
        //DELAY
        aBufferOutL delayr 10
        aTapL       deltapi kDelayTimeLeft
                    delayw (aSigL * kDelaySend) + (aTapL * kDelayFeedback)
        aBufferOutR delayr 10
        aTapR       deltapi kDelayTimeRight
                    delayw (aSigR * kDelaySend) + (aTapR * kDelayFeedback)
    
        if kDelayBypass == 1 then            
            aDelayMixL ntrpol aSigL, aTapL, kDelayMix
            aDelayMixR ntrpol aSigR, aTapR, kDelayMix
            outs aDelayMixL, aDelayMixR
        endif       
     endif

     //Outputs dry signal only if both effects are bypassed
         if kDelayBypass == 0 && gkReverbBypass == 0 then
            outs aSigL, aSigR
         endif
 
    //CLEARS SIGNAL
        chnclear "SigL"
        chnclear "SigR" 
endin
</CsInstruments>
<CsScore>
;f0 z
i "OnOff"   0 999999999
i "Delay"   0 999999999
i "Reverb"  0 999999999
</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
