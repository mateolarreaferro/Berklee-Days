<Cabbage>
form caption("HitSound2") size(400, 300), guiMode("queue") pluginId("def1")

button bounds(30, 22, 80, 40) channel("trigger")
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
ksmps = 32
nchnls = 2
0dbfs = 1


instr 1
    kTrig chnget "trigger"
    if changed(kTrig) == 1 then
        event "i", 1001, 0, .5
    endif
endin

instr 1001
    aEnv expon 1, p3, 0.001
    aSig oscili aEnv, 1400*aEnv
    outs aSig, aSig
endin

</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
;starts instrument 1 and runs it for a week
i1 0 [60*60*24*7] 
</CsScore>
</CsoundSynthesizer>