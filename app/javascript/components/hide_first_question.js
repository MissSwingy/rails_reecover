function fadeAllCards(){
  document.querySelector(".cards-quiz").classList.add('fade-in');
}

const hideFirstQuestion = ()  => {
  const firstQuestionContainer = document.querySelector("[data-container='0']");
  const firstQuestionButtons = document.querySelectorAll("[data-button]");
  if (firstQuestionButtons) {
    firstQuestionButtons.forEach(function(button) {
      button.addEventListener("click", () => {
        firstQuestionContainer.style.display = "none";
        fadeAllCards();
      })
    })
  }


}

export {hideFirstQuestion};
