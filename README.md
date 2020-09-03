# Denoising-EMG-signals-via-TKEO
Accurate identification of the onset of muscle activity is an important element in the biomechanical analysis of human movement.  Inclusion of the Teager–Kaiser energy operator (TKEO) in signal conditioning increases the accuracy of popular electromyography (EMG) onset detection methods.
The non-linear TKEO, introduced by Kaiser (Kaiser 1990; Kaiser 1993), measures instantaneous energy changes of signals composed of a single time-varying frequency.
One advantage of TKEO output, compared with other onset detection methods, is that the calculated energy is derived from instantaneous amplitude and instantaneous frequency of the signal. Therefore, TKEO may improve our ability to analyze muscle activity as depolarization of the muscle cell membrane during contraction produces rapid fluctuations in signal’s amplitude and frequency. TKEO, thus, emphasizes both properties of motor unit action potentials, amplitude and frequency, whereby SNR is improved and onset detection, theoretically, becomes more accurate.
The discrete version of the Teager-Kaiser operator is computed according to:
y[n] = x[n]^{2/m} - (x[n-M]*x[n+M])^{1/m}
with m the exponent parameter and M the lag parameter which both are usually equal to 1 for a conventional operator.
