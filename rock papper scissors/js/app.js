let rock = document.getElementById('rock');
let paper = document.getElementById('paper');
let scissors = document.getElementById('scissors');
let win = document.querySelector(".winner p");
let iconUser = document.querySelector(".icon-user");
let iconPc = document.querySelector(".icon-pc");
let section = document.querySelector("section");
let roundGame = document.querySelector(".play p");
let namePlayer = document.querySelector(".name-player");
let player0 = document.getElementById("player0");
let player1 = document.getElementById("player1");
let result = document.querySelector(".result-player");
let imgResult = document.querySelector(".img-result");
let robotUser = document.querySelector(".robot-user");
let male = document.querySelector(".male");
let female = document.querySelector(".female");
let bubbleUser = document.querySelector(".speech-bubble-user");
let bubblecomputer = document.querySelector(".speech-bubble-computer");
let scoreUser = 0;
let scorecomputer = 0;
let scoreTie = 0;
let userchoice;
let counter = 0;
let beginGame = false;
let bubbleWin = [
  "There's nothing wrong with being a loser.",
  "You should feer me. I'm a very lucky person.",
  "Oh don't worry! Someday you will win too. With a different opponent maybe!",
  "I am a little bit tired of always win!",
  "LOSSEEEERRRR"
];
let bubbleTie = [
  "Let's play again",
  "One more time!",
  "Don't do what I do!",
  "Stop copy me;"
];
let bubbleLose = [
  "The only sure thing about luck is that it will change.",
  "One time winning isn't the winning of the battle..",
  "Even the losers get lucky sometimes! ",
  "If you hang around with losers you become a loser "
];
section.style.display = "none";
namePlayer.style.display = "block ";
roundGame.style.display = "none";
//-----------dilosi onomaton kai emfananizei to paixnidi -----------------------
const playGame = () => {
  if (beginGame === true) {
    document.querySelector(".img-play").style.display = "none";
    roundGame.style.display = "block";
    section.style.display = "block";
    if (!player0.value)
      player0.value = localStorage.getItem("player0") || "A";
    if (!player1.value)
      player1.value = localStorage.getItem("player1") || "B";
    saveNames();
    result.style.display = "none";
    imgResult.style.display = "none";
    male.style.pointerEvents = "none";
    female.style.pointerEvents = "none";
    bubbleUser.style.display = "none"
    bubblecomputer.style.display = "none"

  }
  else
    alert("dialekse male h female");
}
//----------------dialegw ti thelw na paiksw  -----------------------
const user = (value) => {
  if (value === "rock") {
    userchoice = "rock"
    iconUser.classList.add("rock-user");
    iconUser.classList.remove("papper-user");
    iconUser.classList.remove("scissors-user");
  }
  if (value === "paper") {
    userchoice = "paper"
    iconUser.classList.add("papper-user");
    iconUser.classList.remove("rock-user");
    iconUser.classList.remove("scissors-user");
  }
  if (value === "scissors") {
    userchoice = "scissors"
    iconUser.classList.add("scissors-user");
    iconUser.classList.remove("papper-user");
    iconUser.classList.remove("rock-user");
  }
  play();
  round();
  
};
//---------------------dialegei tixea gia ton antipalo-----------------------
const computer = () => {
  const randomNumber = Math.floor(Math.random() * 3);
  switch (randomNumber) {
    case 0:
      iconPc.classList.add("rock-pc");
      iconPc.classList.remove("papper-pc");
      iconPc.classList.remove("scissors-pc");
      return "rock";
    case 1:
      iconPc.classList.add("papper-pc");
      iconPc.classList.remove("rock-pc");
      iconPc.classList.remove("scissors-pc");
      return "paper";
    default:
      iconPc.classList.add("scissors-pc");
      iconPc.classList.remove("papper-pc");
      iconPc.classList.remove("rock-pc");
      return "scissors";
  }
}
//------------------------dixnei pios einai o nikitis se kathe giro -----------------------
const winner = (userChoice, computerChoice) => {
  if (userChoice === computerChoice)
    return "tie"
  if (userChoice === "rock") {
    if (computerChoice === "paper")
      return `${player1.value}-pc win`;
    else
      return `${player0.value} win`;
  }
  if (userChoice === "paper") {
    if (computerChoice === "scissors")
      return `${player1.value}-pc win`;
    else
      return `${player0.value} win`;
  }
  if (userChoice === "scissors") {
    if (computerChoice === "rock")
      return `${player1.value}-pc win`;
    else
      return `${player0.value} win`;
  }
}
//--------------------blepei pios nikaei se kathe giro kai bazei tis nikes , isopalies -----------------------
const play = () => {
  let computerChoice = computer();
  win.innerHTML = winner(userchoice, computerChoice);
  bubbleUser.innerHTML = bubbleUserFunction(userchoice, computerChoice);
  bubblecomputer.innerHTML = bubbleCumpoterFunction(userchoice, computerChoice);
  bubbleUser.style.display = "flex"
  bubblecomputer.style.display = "flex"
  if (winner(userchoice, computerChoice) === `${player1.value}-pc win`) {
    scorecomputer = document.querySelector(".score-computer").innerHTML = ++scorecomputer;
  }
  else if (winner(userchoice, computerChoice) === `${player0.value} win`) {
    scoreUser = document.querySelector(".score-user").innerHTML = ++scoreUser;
  }
  else {
    scoreTie = document.querySelector(".score-tie").innerHTML = ++scoreTie;
  }
  console.log(winner(userchoice, computerChoice));
  
}
scoreUser.innerHTML = 0;
//-----------------metraei tous girous kai otan ftasoun stous 10 mas dixnei ton nikiti -----------------------
const round = () => {
  counter++
  roundGame.innerHTML = ` ${counter}/10 Turn `
  console.log(counter)
  console.log(`${player0.value} eisai ${scoreUser} o ${player1.value} einai ${scorecomputer}  tie ${scoreTie}`);
  if (counter === 10) {
    if (scoreUser > scorecomputer) {
      section.style.display = "none";
      result.style.display = "block";
      imgResult.style.display = "block";
      imgResult.classList.add("win-result");
      imgResult.classList.remove("lose-result");
      imgResult.classList.remove("draw-result");
      result.innerHTML = `Win ${scoreUser} - Tie ${scoreTie} - Lose ${scorecomputer} `
      reset();
    }
    else if (scoreUser < scorecomputer) {
      section.style.display = "none";
      result.style.display = "block";
      imgResult.style.display = "block";
      imgResult.classList.add("lose-result");
      imgResult.classList.remove("win-result");
      imgResult.classList.remove("draw-result");
      result.innerHTML = `Win ${scoreUser} - Tie ${scoreTie} - Lose ${scorecomputer} `
      // alert("nikises o ipologistis");
      reset();
    }
    else {
      section.style.display = "none";
      result.style.display = "block";
      imgResult.style.display = "block";
      imgResult.classList.add("draw-result");
      imgResult.classList.remove("win-result");
      imgResult.classList.remove("lose-result");
      result.innerHTML = `Win ${scoreUser} - Tie ${scoreTie} - Lose ${scorecomputer} `
      reset();
    }
  }
}
//-----------------apothikevi ta onomata sto locaStorage-----------------------
function saveNames() {
  localStorage.setItem("player0", player0.value);
  localStorage.setItem("player1", player1.value);
}
//--------------krataei patimeno t koumpi apo t male female  -----------------------
let maleFemaleCOnteiner = document.getElementById("male-female-conteiner");
let maleActive = maleFemaleCOnteiner.getElementsByClassName("male-active");
for (let i = 0; i < maleActive.length; i++) {
  maleActive[i].addEventListener("click", function () {
    if (male.classList.value === "male male-active"  ) {
   
      male.classList.add("active");
      female.classList.remove("active");
      
    }
    else if (female.classList.value === "female male-active" ) {
       female.classList.add("active");
       male.classList.remove("active");
    
    }
console.log(male.classList)

    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
console.log(document.querySelector(".maleLine".classList))

//-----------------emfanizei an t robot einai arseniko i thiliko k t robot -----------------------
const robot = (value) => {
  if (value === "female") {
    robotUser.classList.remove("boy-user");
    robotUser.classList.add("girl-user");
    beginGame = true;
  }
  if (value === "male") {
    robotUser.classList.remove("girl-user");
    robotUser.classList.add("boy-user");
    beginGame = true;
  }
  //console.log(beginGame)
}
//-----------------dixnei to bubble apo ton user -----------------------
const bubbleUserFunction = (userChoice, computerChoice) => {
  let randomBubbleUser = Math.floor(Math.random() * 4);
  if (winner(userchoice, computerChoice) === `${player1.value}-pc win`) {
    return bubbleLose[randomBubbleUser];
  }
  else if (winner(userchoice, computerChoice) === `${player0.value} win`) {
    return bubbleWin[randomBubbleUser];
  }
  else {
    return bubbleTie[randomBubbleUser];
  }
}
//---------------------dixnei to bubble apo t cumputer-----------------------
const bubbleCumpoterFunction = (userChoice, computerChoice) => {
  let randomBubbleCumputer = Math.floor(Math.random() * 4);
  if (winner(userchoice, computerChoice) === `${player1.value}-pc win`) {
    return bubbleWin[randomBubbleCumputer];
  }
  else if (winner(userchoice, computerChoice) === `${player0.value} win`) {
    return bubbleLose[randomBubbleCumputer];
  }
  else {
    return bubbleTie[randomBubbleCumputer];
  }
}
//---------------------kanei houver gia na dialekseis an thes agori i koritsi -----------------------
let hovverLeft = document.querySelector(".hovver-left");
let hovverRight = document.querySelector(".hovver-right");
male.addEventListener("mouseover", function mouseOver() {
  hovverLeft.style.display = "block";
});
male.addEventListener("mouseout", function mouseOut() {
  hovverLeft.style.display = "none";
});
female.addEventListener("mouseover", function mouseOver() {
  hovverRight.style.display = "block";
});
female.addEventListener("mouseout", function mouseOut() {
  hovverRight.style.display = "none";
});
//-----------------------kanei reset t paixnidi -----------------------
const reset = () => {
  section.style.display = "none";
  roundGame.style.display = "none";
  document.querySelector(".img-play").style.display = "block";
  roundGame.innerHTML = " "
  document.querySelector(".score-user").innerHTML = 0
  document.querySelector(".score-tie").innerHTML = 0
  document.querySelector(".score-computer").innerHTML = 0
  win.innerHTML = " ";
  bubbleUser.innerHTML = " ";
  bubblecomputer.innerHTML = " ";
  iconPc.classList.remove("rock-pc", "scissors-pc", "papper-pc");
  iconUser.classList.remove("papper-user", "rock-user", "scissors-user");
  male.style.pointerEvents = "auto";
  female.style.pointerEvents = "auto";
  scoreUser = 0;
  scorecomputer = 0;
  scoreTie = 0;
  counter = 0;
}
