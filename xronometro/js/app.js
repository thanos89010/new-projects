class Timer {
  constructor(inputUser, buttonPause, buttonPlay, callbacks) {
    if (callbacks) {
      this.onStart = callbacks.onStart;
      this.onPause = callbacks.onPause;
      this.onTick = callbacks.onTick;
    }
    this.inputUser = inputUser;
    this.buttonPause = buttonPause;
    this.buttonPlay = buttonPlay;
    this.buttonPlay.addEventListener('click', this.start);
    this.buttonPause.addEventListener('click', this.pause);
  }
  start = () => {
    if (this.onStart) {
      this.onStart(this.timeRemain);
    }
    this.tick();
    this.timerId = setInterval(this.tick, 20);
  };
  pause = () => {
    clearInterval(this.timerId);
  };
  tick = () => {
    if (this.timeRemain <= 0) {
      this.pause();
      if (this.onPause) this.onPause();
    } else {
      this.timeRemain = this.timeRemain - 0.02;
      if (this.onTick) this.onTick(this.timeRemain);
    }
  };
  get timeRemain() {
    return parseFloat(this.inputUser.value);
  }
  set timeRemain(time) {
    this.inputUser.value = time.toFixed(2);
  }
}

const inputUser = document.querySelector('#duration-input');
const buttonPlay = document.querySelector('#start');
const buttonPause = document.querySelector('#pause');
const circle = document.querySelector('circle');
const perimeter = circle.getAttribute('r') * 2 * Math.PI;
circle.setAttribute('stroke-dasharray', perimeter);

const timer = new Timer(inputUser, buttonPause, buttonPlay, {
  onStart(totalDuration) {
    duration = totalDuration;
  },
  onTick(timeRemain) {
    circle.setAttribute(
      'stroke-dashoffset',
      (perimeter * timeRemain) / duration - perimeter
    );
  },
  onPause() {
    console.log('Timer is completed');
  }
});
