= DAQ Systems
== Sensors and Transducers
#rect()[
  #table(
    columns: (auto, auto),
    [*Sensors and Transducers*], [*Phenomenon*],
    [Thermocouple, RTD, thermistor], [Temperature],
    [Photo sensor], [Light],
    [Microphone], [Sound],
    [Strain gage, piezoelectric transducer], [Force and Pressure],
    [Potentiometer, LVDT, optical encoder], [Position and Displacement],
    [Accelerometer], [Acceleration],
    [pH probe], [pH],
  )
]
== Amplification
#rect()[
  - Maximize ADC range
  - Increase signal-to-noise ratio (SNR)
]
== Filtering
#rect()[
  Remove unwanted *frequencies* or *noise* from the signal.
]
== Types of NI Systems
#rect[
  *PC-Based Systems*

  Customizable, accurate, cost-effective benchtop measurements.
]
#rect[
  *CompactDAQ*

  Electrical & physical measurements; benchtop or distributed.
]
#rect[
  *CompactRIO*

  Real-time processing; stand-alone logging & industrial monitoring.
]
#rect[
  *PXI*

  High-performance validation & production test; scalable architecture.
]
= Sampling and Timing
== The Nyquist Theorem
#rect()[
  The *Nyquist Theorem* states:
  - A signal must be sampled at least *twice* the highest frequency component of the signal to be accurately reconstructed.
  - Sample around 5-10 times the highest frequency component to ensure accurate representation of the *signal shape*.
]
== Timing Types
#rect()[
  Two types of timing can be used to control when data samples are acquired (or generated):

  #grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    [
      *Software timing:* the application software controls when data is acquired or generated
    ],
    [
      *Hardware timing:* a digital signal controls when data is acquired or generated
    ],
  )
]
== Acquisition Modes

#rect()[
  *On Demand:* The device produces a requested sample when prompted by a software acquisition request.

  #line(length: 100%, stroke: 0.5pt)

  *Finite Samples:* The DAQ device acquires samples at a specified rate until it reaches the number of total requested samples, and then stops acquiring and sends the data to the computer.

  *Continuous Samples:* The DAQ device acquires samples at a specified rate and sends blocks of samples to the computer when requested, until it receives a command to stop acquiring or encounters an error condition.

  *Hardware-Timed Single Point (HWTSP):* The computer acquires data points one at a time from the DAQ device while the device runs off of a sample clock.
  #line(length: 100%, stroke: 0.5pt)
  #align(right)[Hardware-Timed]
]

= Grounding
== Signal Sources
#rect()[
  There are two main signal sources:

  #grid(
    columns: (1fr, 1fr),
    align: center,
    [*Grounded*], [*Floating*],
  )
]
== MUX
#rect()[
  A *MUX* (multiplexer) is a device that selects one of several input signals and forwards it to a single output line. *Simultaneous measurements* on the other hand, are made by using multiple channels at the same time, but much more expensive.
]
== Differential vs Single-Ended
#rect()[
  - *Differential* measurements are made between two input terminals, and the voltage is measured with respect to the difference between the two terminals. This is the preferred method of measurement.

  - *Single-ended* measurements are made between one input terminal and a common reference point, usually ground (*GRSE* vs *NRSE*). This method is more susceptible to noise and interference.
]
