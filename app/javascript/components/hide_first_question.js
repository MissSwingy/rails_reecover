const hideFirstQuestion = ()  => {
  const firstQuestionContainer = document.querySelector("[data-container='0']");
  const firstQuestionButtons = document.querySelectorAll("[data-button]");
  if (firstQuestionButtons) {
    firstQuestionButtons.forEach(function(button) {
      button.addEventListener("click", () => {
        firstQuestionContainer.style.display = "none";
      })
    })
  }
}

export { hideFirstQuestion };
