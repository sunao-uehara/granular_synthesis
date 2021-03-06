// Boot the server
s.boot;

// Load an audio file
s.sendMsg(\b_allocRead, 10, “sounds/a11wlk01.wav”);

// Now define the granular synth
(
  {
	var b = 10, trate, dur;
	trate = MouseY.kr(2,120,1);
	dur = 1.2 / trate;
	TGrains.ar(2, Impulse.ar(trate), b,
		(1.2 ** WhiteNoise.kr(3).round(1)),
		MouseX.kr(0,BufDur.kr(b)),
		dur,
		WhiteNoise.kr(0.6), 0.1);
  }.play;
)