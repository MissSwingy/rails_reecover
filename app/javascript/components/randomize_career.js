const reloadPage = () => {
  const button = document.getElementById('randomize-career');
  button.addEventListener("click", (event) => {
  document.location.reload(true);
  })
}

export { reloadPage };
